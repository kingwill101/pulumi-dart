// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_diagnostic_categories_get_diagnostic_categories_args_doc}
/// Arguments for getDiagnosticCategories.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_diagnostic_categories_get_diagnostic_categories_args_doc}
class GetDiagnosticCategoriesArgs {
  /// The ID of an existing Resource which Monitor Diagnostics Categories should be retrieved for.
  final pulumi.Input<String> resourceId;

  /// Creates a new [GetDiagnosticCategoriesArgs].
  /// [resourceId] The ID of an existing Resource which Monitor Diagnostics Categories should be retrieved for.
  GetDiagnosticCategoriesArgs({
    required String resourceId,
  }) :
      resourceId = pulumi.Input.asInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory GetDiagnosticCategoriesArgs.fromMap(Map<String, dynamic> map) {
    return GetDiagnosticCategoriesArgs(
      resourceId: map['resourceId'] as String,
    );
  }
}

