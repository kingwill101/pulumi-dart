// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_release_channel_setting_binding_release_channel_setting_binding_args_doc}
/// The set of arguments for ReleaseChannelSettingBinding.
/// {@endtemplate}
/// {@macro pulumi_gemini_release_channel_setting_binding_release_channel_setting_binding_args_doc}
class ReleaseChannelSettingBindingArgs {
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Product type of the setting binding.
  /// Possible values are: `GEMINI_CLOUD_ASSIST`, `GEMINI_CODE_ASSIST`.
  final pulumi.Input<String>? product;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> releaseChannelSettingId;
  /// Id of the setting binding.
  final pulumi.Input<String> settingBindingId;
  /// Target of the binding.
  final pulumi.Input<String> target;

  /// Creates a new [ReleaseChannelSettingBindingArgs].
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [product] Product type of the setting binding.
  /// [project] The ID of the project in which the resource belongs.
  /// [releaseChannelSettingId] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [settingBindingId] Id of the setting binding.
  /// [target] Target of the binding.
  ReleaseChannelSettingBindingArgs({
    Map<String, String>? labels,
    String? location,
    String? product,
    String? project,
    required String releaseChannelSettingId,
    required String settingBindingId,
    required String target,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      product = pulumi.Input.asOptionalInput<String>(product),
      project = pulumi.Input.asOptionalInput<String>(project),
      releaseChannelSettingId = pulumi.Input.asInput<String>(releaseChannelSettingId),
      settingBindingId = pulumi.Input.asInput<String>(settingBindingId),
      target = pulumi.Input.asInput<String>(target);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': ?location,
      'product': ?product,
      'project': ?project,
      'releaseChannelSettingId': releaseChannelSettingId,
      'settingBindingId': settingBindingId,
      'target': target,
    };
  }

  factory ReleaseChannelSettingBindingArgs.fromMap(Map<String, dynamic> map) {
    return ReleaseChannelSettingBindingArgs(
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      product: map['product'] == null ? null : map['product'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      releaseChannelSettingId: map['releaseChannelSettingId'] as String,
      settingBindingId: map['settingBindingId'] as String,
      target: map['target'] as String,
    );
  }
}

