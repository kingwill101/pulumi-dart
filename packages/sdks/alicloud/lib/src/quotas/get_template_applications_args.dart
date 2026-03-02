// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quotas_get_template_applications_get_template_applications_args_doc}
/// Arguments for getTemplateApplications.
/// {@endtemplate}
/// {@macro pulumi_quotas_get_template_applications_get_template_applications_args_doc}
class GetTemplateApplicationsArgs {
  /// The ID of the quota application batch.
  final pulumi.Input<String>? batchQuotaApplicationId;
  /// A list of Template Applications IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Cloud service name abbreviation.> For more information about cloud services that support quota centers, see Cloud services that support quota centers.
  final pulumi.Input<String>? productCode;
  /// The quota ID.
  final pulumi.Input<String>? quotaActionCode;
  /// The quota type. Value: `CommonQuota`, `FlowControl` and `WhiteListLabel`.
  final pulumi.Input<String>? quotaCategory;

  /// Creates a new [GetTemplateApplicationsArgs].
  /// [batchQuotaApplicationId] The ID of the quota application batch.
  /// [ids] A list of Template Applications IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [productCode] Cloud service name abbreviation.> For more information about cloud services that support quota centers, see Cloud services that support quota centers.
  /// [quotaActionCode] The quota ID.
  /// [quotaCategory] The quota type. Value: `CommonQuota`, `FlowControl` and `WhiteListLabel`.
  GetTemplateApplicationsArgs({
    this.batchQuotaApplicationId,
    this.ids,
    this.outputFile,
    this.productCode,
    this.quotaActionCode,
    this.quotaCategory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchQuotaApplicationId': ?batchQuotaApplicationId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'productCode': ?productCode,
      'quotaActionCode': ?quotaActionCode,
      'quotaCategory': ?quotaCategory,
    };
  }

  factory GetTemplateApplicationsArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplateApplicationsArgs(
      batchQuotaApplicationId: map['batchQuotaApplicationId'] == null ? null : (map['batchQuotaApplicationId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      productCode: map['productCode'] == null ? null : (map['productCode'] as String).input(),
      quotaActionCode: map['quotaActionCode'] == null ? null : (map['quotaActionCode'] as String).input(),
      quotaCategory: map['quotaCategory'] == null ? null : (map['quotaCategory'] as String).input(),
    );
  }
}

