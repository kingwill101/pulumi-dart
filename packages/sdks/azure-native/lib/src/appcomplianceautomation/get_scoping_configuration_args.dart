// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appcomplianceautomation_get_scoping_configuration_args_doc}
/// Arguments for getScopingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_appcomplianceautomation_get_scoping_configuration_args_doc}
class GetScopingConfigurationArgs {
  /// Report Name.
  final pulumi.Input<String> reportName;
  /// The scoping configuration of the specific report.
  final pulumi.Input<String> scopingConfigurationName;

  /// Creates a new [GetScopingConfigurationArgs].
  /// [reportName] Report Name.
  /// [scopingConfigurationName] The scoping configuration of the specific report.
  GetScopingConfigurationArgs({
    required this.reportName,
    required this.scopingConfigurationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reportName': reportName,
      'scopingConfigurationName': scopingConfigurationName,
    };
  }

  factory GetScopingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetScopingConfigurationArgs(
      reportName: (map['reportName'] as String).input(),
      scopingConfigurationName: (map['scopingConfigurationName'] as String).input(),
    );
  }
}

