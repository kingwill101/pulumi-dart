// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quota_applications_application.dart';
import 'get_quota_applications_dimension.dart';

/// Result data returned by getQuotaApplications.
class GetQuotaApplicationsResult {
  final List<GetQuotaApplicationsApplication> applications;
  final List<GetQuotaApplicationsDimension>? dimensions;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyWord;
  final String? outputFile;
  final String productCode;
  final String? quotaActionCode;
  final String? quotaCategory;
  final String? status;

  /// Creates a new [GetQuotaApplicationsResult].
  /// [applications] Required.
  /// [dimensions] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyWord] Optional.
  /// [outputFile] Optional.
  /// [productCode] Required.
  /// [quotaActionCode] Optional.
  /// [quotaCategory] Optional.
  /// [status] Optional.
  GetQuotaApplicationsResult({
    required this.applications,
    this.dimensions,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.keyWord,
    this.outputFile,
    required this.productCode,
    this.quotaActionCode,
    this.quotaCategory,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications': pulumi.Input.encodeList<GetQuotaApplicationsApplication, Map<String, dynamic>>(applications, (value) => value.toMap()),
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<GetQuotaApplicationsDimension, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'keyWord': ?keyWord,
      'outputFile': ?outputFile,
      'productCode': productCode,
      'quotaActionCode': ?quotaActionCode,
      'quotaCategory': ?quotaCategory,
      'status': ?status,
    };
  }

  factory GetQuotaApplicationsResult.fromMap(Map<String, dynamic> map) {
    return GetQuotaApplicationsResult(
      applications: pulumi.Input.decodeList<GetQuotaApplicationsApplication>(map['applications'], (value) => GetQuotaApplicationsApplication.fromMap((value as Map).cast<String, dynamic>())),
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<GetQuotaApplicationsDimension>(map['dimensions']!, (value) => GetQuotaApplicationsDimension.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyWord: map['keyWord'] == null ? null : map['keyWord']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      productCode: map['productCode'] as String,
      quotaActionCode: map['quotaActionCode'] == null ? null : map['quotaActionCode']! as String,
      quotaCategory: map['quotaCategory'] == null ? null : map['quotaCategory']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

