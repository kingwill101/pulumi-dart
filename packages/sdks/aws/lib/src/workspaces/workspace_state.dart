// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_workspace_properties.dart';

/// Input properties used for looking up and filtering Workspace resources.
class WorkspaceState {
  /// The ID of the bundle for the WorkSpace.
  final pulumi.Input<String>? bundleId;
  /// The name of the WorkSpace, as seen by the operating system.
  final pulumi.Input<String>? computerName;
  /// The ID of the directory for the WorkSpace.
  final pulumi.Input<String>? directoryId;
  /// The IP address of the WorkSpace.
  final pulumi.Input<String>? ipAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Indicates whether the data stored on the root volume is encrypted.
  final pulumi.Input<bool>? rootVolumeEncryptionEnabled;
  /// The operational state of the WorkSpace.
  final pulumi.Input<String>? state;
  /// The tags for the WorkSpace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace.
  final pulumi.Input<String>? userName;
  /// Indicates whether the data stored on the user volume is encrypted.
  final pulumi.Input<bool>? userVolumeEncryptionEnabled;
  /// The ARN of a symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  final pulumi.Input<String>? volumeEncryptionKey;
  /// The WorkSpace properties.
  final pulumi.Input<WorkspaceWorkspaceProperties>? workspaceProperties;

  /// Creates a new [WorkspaceState].
  /// [bundleId] The ID of the bundle for the WorkSpace.
  /// [computerName] The name of the WorkSpace, as seen by the operating system.
  /// [directoryId] The ID of the directory for the WorkSpace.
  /// [ipAddress] The IP address of the WorkSpace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootVolumeEncryptionEnabled] Indicates whether the data stored on the root volume is encrypted.
  /// [state] The operational state of the WorkSpace.
  /// [tags] The tags for the WorkSpace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [userName] The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace.
  /// [userVolumeEncryptionEnabled] Indicates whether the data stored on the user volume is encrypted.
  /// [volumeEncryptionKey] The ARN of a symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  /// [workspaceProperties] The WorkSpace properties.
  WorkspaceState({
    pulumi.Output<String>? bundleId,
    pulumi.Output<String>? computerName,
    pulumi.Output<String>? directoryId,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? rootVolumeEncryptionEnabled,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? userName,
    pulumi.Output<bool>? userVolumeEncryptionEnabled,
    pulumi.Output<String>? volumeEncryptionKey,
    pulumi.Output<WorkspaceWorkspaceProperties>? workspaceProperties,
  }) :
      bundleId = pulumi.Input.asOptionalInput<String>(bundleId),
      computerName = pulumi.Input.asOptionalInput<String>(computerName),
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootVolumeEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(rootVolumeEncryptionEnabled),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      userName = pulumi.Input.asOptionalInput<String>(userName),
      userVolumeEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(userVolumeEncryptionEnabled),
      volumeEncryptionKey = pulumi.Input.asOptionalInput<String>(volumeEncryptionKey),
      workspaceProperties = pulumi.Input.asOptionalInput<WorkspaceWorkspaceProperties>(workspaceProperties);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': ?bundleId,
      'computerName': ?computerName,
      'directoryId': ?directoryId,
      'ipAddress': ?ipAddress,
      'region': ?region,
      'rootVolumeEncryptionEnabled': ?rootVolumeEncryptionEnabled,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userName': ?userName,
      'userVolumeEncryptionEnabled': ?userVolumeEncryptionEnabled,
      'volumeEncryptionKey': ?volumeEncryptionKey,
      'workspaceProperties': ?pulumi.Input.mapOptionalInputValue<WorkspaceWorkspaceProperties, Map<String, dynamic>>(workspaceProperties, (value) => value.toMap()),
    };
  }

  factory WorkspaceState.fromMap(Map<String, dynamic> map) {
    return WorkspaceState(
      bundleId: map['bundleId'] == null ? null : pulumi.Output.create<String>(map['bundleId'] as String),
      computerName: map['computerName'] == null ? null : pulumi.Output.create<String>(map['computerName'] as String),
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rootVolumeEncryptionEnabled: map['rootVolumeEncryptionEnabled'] == null ? null : pulumi.Output.create<bool>(map['rootVolumeEncryptionEnabled'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
      userVolumeEncryptionEnabled: map['userVolumeEncryptionEnabled'] == null ? null : pulumi.Output.create<bool>(map['userVolumeEncryptionEnabled'] as bool),
      volumeEncryptionKey: map['volumeEncryptionKey'] == null ? null : pulumi.Output.create<String>(map['volumeEncryptionKey'] as String),
      workspaceProperties: map['workspaceProperties'] == null ? null : pulumi.Output.create<WorkspaceWorkspaceProperties>(WorkspaceWorkspaceProperties.fromMap((map['workspaceProperties'] as Map).cast<String, dynamic>())),
    );
  }
}

