// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_configuration_destination.dart';

/// {@template pulumi_efs_replication_configuration_replication_configuration_args_doc}
/// The set of arguments for ReplicationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_efs_replication_configuration_replication_configuration_args_doc}
class ReplicationConfigurationArgs {
  /// A destination configuration block (documented below).
  final pulumi.Input<ReplicationConfigurationDestination> destination;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the file system that is to be replicated.
  final pulumi.Input<String> sourceFileSystemId;

  /// Creates a new [ReplicationConfigurationArgs].
  /// [destination] A destination configuration block (documented below).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceFileSystemId] The ID of the file system that is to be replicated.
  ReplicationConfigurationArgs({
    required this.destination,
    this.region,
    required this.sourceFileSystemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<ReplicationConfigurationDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'region': ?region,
      'sourceFileSystemId': sourceFileSystemId,
    };
  }

  factory ReplicationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationArgs(
      destination: pulumi.Input.fromValue(ReplicationConfigurationDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceFileSystemId: pulumi.Input.fromValue(map['sourceFileSystemId'] as String),
    );
  }
}

