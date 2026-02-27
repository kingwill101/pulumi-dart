// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LoggingSettingBinding.
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

  LoggingSettingBindingArgs({
    this.labels,
    this.location,
    required this.loggingSettingId,
    this.product,
    this.project,
    required this.settingBindingId,
    required this.target,
  });

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
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      loggingSettingId: pulumi.Input.asInput<String>(map['loggingSettingId']),
      product: pulumi.Input.asOptionalInput<String>(map['product']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      settingBindingId: pulumi.Input.asInput<String>(map['settingBindingId']),
      target: pulumi.Input.asInput<String>(map['target']),
    );
  }
}
