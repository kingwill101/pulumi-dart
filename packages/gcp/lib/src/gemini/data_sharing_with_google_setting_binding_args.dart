// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_data_sharing_with_google_setting_binding_data_sharing_with_google_setting_binding_args_doc}
/// The set of arguments for DataSharingWithGoogleSettingBinding.
/// {@endtemplate}
/// {@macro pulumi_gemini_data_sharing_with_google_setting_binding_data_sharing_with_google_setting_binding_args_doc}
class DataSharingWithGoogleSettingBindingArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> dataSharingWithGoogleSettingId;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;

  /// Product type of the setting binding. Values include GEMINI_IN_BIGQUERY, GEMINI_CLOUD_ASSIST, etc. See [product reference](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.dataSharingWithGoogleSettings.settingBindings) for a complete list.
  final pulumi.Input<String>? product;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Required. Id of the setting binding.
  final pulumi.Input<String> settingBindingId;

  /// Target of the binding.
  final pulumi.Input<String> target;

  /// Creates a new [DataSharingWithGoogleSettingBindingArgs].
  /// [dataSharingWithGoogleSettingId] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [product] Product type of the setting binding. Values include GEMINI_IN_BIGQUERY, GEMINI_CLOUD_ASSIST, etc. See [product reference](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.dataSharingWithGoogleSettings.settingBindings) for a complete list.
  /// [project] The ID of the project in which the resource belongs.
  /// [settingBindingId] Required. Id of the setting binding.
  /// [target] Target of the binding.
  DataSharingWithGoogleSettingBindingArgs({
    required String dataSharingWithGoogleSettingId,
    Map<String, String>? labels,
    String? location,
    String? product,
    String? project,
    required String settingBindingId,
    required String target,
  })  : dataSharingWithGoogleSettingId =
            pulumi.Input.asInput<String>(dataSharingWithGoogleSettingId),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        product = pulumi.Input.asOptionalInput<String>(product),
        project = pulumi.Input.asOptionalInput<String>(project),
        settingBindingId = pulumi.Input.asInput<String>(settingBindingId),
        target = pulumi.Input.asInput<String>(target);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataSharingWithGoogleSettingId'] = dataSharingWithGoogleSettingId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final productValue = product;
    if (productValue != null) {
      map['product'] = productValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['settingBindingId'] = settingBindingId;
    map['target'] = target;
    return map;
  }

  factory DataSharingWithGoogleSettingBindingArgs.fromMap(
      Map<String, dynamic> map) {
    return DataSharingWithGoogleSettingBindingArgs(
      dataSharingWithGoogleSettingId:
          map['dataSharingWithGoogleSettingId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      product: map['product'] == null ? null : map['product'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      settingBindingId: map['settingBindingId'] as String,
      target: map['target'] as String,
    );
  }
}
