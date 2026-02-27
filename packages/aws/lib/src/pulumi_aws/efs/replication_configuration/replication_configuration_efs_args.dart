// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../replication_configuration_destination/replication_configuration_destination.dart';

/// The set of arguments for ReplicationConfiguration.
class ReplicationConfigurationEfsArgs {
  /// A destination configuration block (documented below).
  final pulumi.Input<ReplicationConfigurationDestination> destination;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the file system that is to be replicated.
  final pulumi.Input<String> sourceFileSystemId;

  ReplicationConfigurationEfsArgs({
    required this.destination,
    this.region,
    required this.sourceFileSystemId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = pulumi.Input.mapInputValue<
        ReplicationConfigurationDestination,
        Map<String, dynamic>>(destination, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sourceFileSystemId'] = sourceFileSystemId;
    return map;
  }

  factory ReplicationConfigurationEfsArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationEfsArgs(
      destination: pulumi.Input.asInput<ReplicationConfigurationDestination>(
          map['destination']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sourceFileSystemId:
          pulumi.Input.asInput<String>(map['sourceFileSystemId']),
    );
  }
}
