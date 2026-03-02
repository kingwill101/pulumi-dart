// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_get_host_share_keys_get_host_share_keys_args_doc}
/// Arguments for getHostShareKeys.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_get_host_share_keys_get_host_share_keys_args_doc}
class GetHostShareKeysArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Host Share Key IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the Bastion instance.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by Host Share Key name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetHostShareKeysArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Host Share Key IDs.
  /// [instanceId] The ID of the Bastion instance.
  /// [nameRegex] A regex string to filter results by Host Share Key name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetHostShareKeysArgs({
    this.enableDetails,
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetHostShareKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetHostShareKeysArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

