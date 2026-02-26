// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../replication_configuration_destination/replication_configuration_destination.dart';

/// The set of arguments for ReplicationConfiguration.
class ReplicationConfigurationArgs2 {
  /// A destination configuration block (documented below).
  final Input<ReplicationConfigurationDestination> destination;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the file system that is to be replicated.
  final Input<String> sourceFileSystemId;

  ReplicationConfigurationArgs2({
    required this.destination,
    this.region,
    required this.sourceFileSystemId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = Input.mapInputValue<
        ReplicationConfigurationDestination,
        Map<String, dynamic>>(destination, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sourceFileSystemId'] = sourceFileSystemId;
    return map;
  }

  factory ReplicationConfigurationArgs2.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationArgs2(
      destination: Input.asInput<ReplicationConfigurationDestination>(
          map['destination']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceFileSystemId: Input.asInput<String>(map['sourceFileSystemId']),
    );
  }
}
