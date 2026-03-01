// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_template_applications_application.dart';

/// Result data returned by getTemplateApplications.
class GetTemplateApplicationsResult {
  /// A list of Template Applications Entries. Each element contains the following attributes:
  final List<GetTemplateApplicationsApplication> applications;
  /// The ID of the quota application batch.
  final String? batchQuotaApplicationId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Template Applications IDs.
  final List<String> ids;
  final String? outputFile;
  /// Cloud service name abbreviation.> For more information about cloud services that support quota centers, see Cloud services that support quota centers.
  final String? productCode;
  /// The quota ID.
  final String? quotaActionCode;
  /// The quota type. Value:-CommonQuota (default): Generic quota.-FlowControl:API rate quota.-WhiteListLabel: Equity quota.
  final String? quotaCategory;

  /// Creates a new [GetTemplateApplicationsResult].
  /// [applications] A list of Template Applications Entries. Each element contains the following attributes:
  /// [batchQuotaApplicationId] The ID of the quota application batch.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Template Applications IDs.
  /// [outputFile] Optional.
  /// [productCode] Cloud service name abbreviation.> For more information about cloud services that support quota centers, see Cloud services that support quota centers.
  /// [quotaActionCode] The quota ID.
  /// [quotaCategory] The quota type. Value:-CommonQuota (default): Generic quota.-FlowControl:API rate quota.-WhiteListLabel: Equity quota.
  GetTemplateApplicationsResult({
    required this.applications,
    this.batchQuotaApplicationId,
    required this.id,
    required this.ids,
    this.outputFile,
    this.productCode,
    this.quotaActionCode,
    this.quotaCategory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications': pulumi.Input.encodeList<GetTemplateApplicationsApplication, Map<String, dynamic>>(applications, (value) => value.toMap()),
      'batchQuotaApplicationId': ?batchQuotaApplicationId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'productCode': ?productCode,
      'quotaActionCode': ?quotaActionCode,
      'quotaCategory': ?quotaCategory,
    };
  }

  factory GetTemplateApplicationsResult.fromMap(Map<String, dynamic> map) {
    return GetTemplateApplicationsResult(
      applications: pulumi.Input.decodeList<GetTemplateApplicationsApplication>(map['applications'], (value) => GetTemplateApplicationsApplication.fromMap((value as Map).cast<String, dynamic>())),
      batchQuotaApplicationId: map['batchQuotaApplicationId'] == null ? null : map['batchQuotaApplicationId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      productCode: map['productCode'] == null ? null : map['productCode'] as String,
      quotaActionCode: map['quotaActionCode'] == null ? null : map['quotaActionCode'] as String,
      quotaCategory: map['quotaCategory'] == null ? null : map['quotaCategory'] as String,
    );
  }
}

