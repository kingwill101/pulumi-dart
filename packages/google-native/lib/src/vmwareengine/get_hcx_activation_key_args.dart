// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_hcx_activation_key_args_doc}
/// Arguments for getHcxActivationKey.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_hcx_activation_key_args_doc}
class GetHcxActivationKeyArgs {
  final pulumi.Input<String> hcxActivationKeyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHcxActivationKeyArgs].
  /// [hcxActivationKeyId] Required.
  /// [location] Required.
  /// [privateCloudId] Required.
  /// [project] Optional.
  GetHcxActivationKeyArgs({
    required String hcxActivationKeyId,
    required String location,
    required String privateCloudId,
    String? project,
  })  : hcxActivationKeyId = pulumi.Input.asInput<String>(hcxActivationKeyId),
        location = pulumi.Input.asInput<String>(location),
        privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hcxActivationKeyId'] = hcxActivationKeyId;
    map['location'] = location;
    map['privateCloudId'] = privateCloudId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetHcxActivationKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetHcxActivationKeyArgs(
      hcxActivationKeyId: map['hcxActivationKeyId'] as String,
      location: map['location'] as String,
      privateCloudId: map['privateCloudId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
