// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quotas_template_service_template_service_args_doc}
/// The set of arguments for TemplateService.
/// {@endtemplate}
/// {@macro pulumi_quotas_template_service_template_service_args_doc}
class TemplateServiceArgs {
  /// Status of the quota template. Valid values:
  /// - `-1`: disabled.
  final pulumi.Input<int> serviceStatus;

  /// Creates a new [TemplateServiceArgs].
  /// [serviceStatus] Status of the quota template. Valid values:
  TemplateServiceArgs({
    required this.serviceStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceStatus': serviceStatus,
    };
  }

  factory TemplateServiceArgs.fromMap(Map<String, dynamic> map) {
    return TemplateServiceArgs(
      serviceStatus: (map['serviceStatus'] as int).input(),
    );
  }
}

