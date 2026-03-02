// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_configuration_destination.dart';

/// Input properties used for looking up and filtering ReplicationConfiguration resources.
class ReplicationConfigurationState {
  /// When the replication configuration was created.
  /// * `destination[0].file_system_id` - The fs ID of the replica.
  /// * `destination[0].status` - The status of the replication.
  final pulumi.Input<String>? creationTime;
  /// A destination configuration block (documented below).
  final pulumi.Input<ReplicationConfigurationDestination>? destination;
  /// The Amazon Resource Name (ARN) of the original source Amazon EFS file system in the replication configuration.
  final pulumi.Input<String>? originalSourceFileSystemArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the current source file system in the replication configuration.
  final pulumi.Input<String>? sourceFileSystemArn;
  /// The ID of the file system that is to be replicated.
  final pulumi.Input<String>? sourceFileSystemId;
  /// The AWS Region in which the source Amazon EFS file system is located.
  final pulumi.Input<String>? sourceFileSystemRegion;

  /// Creates a new [ReplicationConfigurationState].
  /// [creationTime] When the replication configuration was created.
  /// [destination] A destination configuration block (documented below).
  /// [originalSourceFileSystemArn] The Amazon Resource Name (ARN) of the original source Amazon EFS file system in the replication configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceFileSystemArn] The Amazon Resource Name (ARN) of the current source file system in the replication configuration.
  /// [sourceFileSystemId] The ID of the file system that is to be replicated.
  /// [sourceFileSystemRegion] The AWS Region in which the source Amazon EFS file system is located.
  ReplicationConfigurationState({
    this.creationTime,
    this.destination,
    this.originalSourceFileSystemArn,
    this.region,
    this.sourceFileSystemArn,
    this.sourceFileSystemId,
    this.sourceFileSystemRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'destination': ?pulumi.Input.mapOptionalInputValue<ReplicationConfigurationDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'originalSourceFileSystemArn': ?originalSourceFileSystemArn,
      'region': ?region,
      'sourceFileSystemArn': ?sourceFileSystemArn,
      'sourceFileSystemId': ?sourceFileSystemId,
      'sourceFileSystemRegion': ?sourceFileSystemRegion,
    };
  }

  factory ReplicationConfigurationState.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationState(
      creationTime: map['creationTime'] == null ? null : (map['creationTime'] as String).input(),
      destination: map['destination'] == null ? null : (ReplicationConfigurationDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
      originalSourceFileSystemArn: map['originalSourceFileSystemArn'] == null ? null : (map['originalSourceFileSystemArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sourceFileSystemArn: map['sourceFileSystemArn'] == null ? null : (map['sourceFileSystemArn'] as String).input(),
      sourceFileSystemId: map['sourceFileSystemId'] == null ? null : (map['sourceFileSystemId'] as String).input(),
      sourceFileSystemRegion: map['sourceFileSystemRegion'] == null ? null : (map['sourceFileSystemRegion'] as String).input(),
    );
  }
}

