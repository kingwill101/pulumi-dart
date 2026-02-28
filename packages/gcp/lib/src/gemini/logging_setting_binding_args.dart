// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_logging_setting_binding_logging_setting_binding_args_doc}
/// The set of arguments for LoggingSettingBinding.
/// {@endtemplate}
/// {@macro pulumi_gemini_logging_setting_binding_logging_setting_binding_args_doc}
class LoggingSettingBindingArgs {
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> loggingSettingId;

  /// Product type of the setting binding.
  /// Possible values are: `GEMINI_CODE_ASSIST`.
  final pulumi.Input<String>? product;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Id of the setting binding.
  final pulumi.Input<String> settingBindingId;

  /// Target of the binding.
  final pulumi.Input<String> target;

  /// Creates a new [LoggingSettingBindingArgs].
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [loggingSettingId] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [product] Product type of the setting binding.
  /// [project] The ID of the project in which the resource belongs.
  /// [settingBindingId] Id of the setting binding.
  /// [target] Target of the binding.
  LoggingSettingBindingArgs({
    Map<String, String>? labels,
    String? location,
    required String loggingSettingId,
    String? product,
    String? project,
    required String settingBindingId,
    required String target,
  })  : labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        loggingSettingId = pulumi.Input.asInput<String>(loggingSettingId),
        product = pulumi.Input.asOptionalInput<String>(product),
        project = pulumi.Input.asOptionalInput<String>(project),
        settingBindingId = pulumi.Input.asInput<String>(settingBindingId),
        target = pulumi.Input.asInput<String>(target);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['loggingSettingId'] = loggingSettingId;
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

  factory LoggingSettingBindingArgs.fromMap(Map<String, dynamic> map) {
    return LoggingSettingBindingArgs(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      loggingSettingId: map['loggingSettingId'] as String,
      product: map['product'] == null ? null : map['product'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      settingBindingId: map['settingBindingId'] as String,
      target: map['target'] as String,
    );
  }
}
