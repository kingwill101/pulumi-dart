// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quota_applications_dimension.dart';

/// {@template pulumi_quotas_get_quota_applications_get_quota_applications_args_doc}
/// Arguments for getQuotaApplications.
/// {@endtemplate}
/// {@macro pulumi_quotas_get_quota_applications_get_quota_applications_args_doc}
class GetQuotaApplicationsArgs {
  /// The quota dimensions.
  final pulumi.Input<List<GetQuotaApplicationsDimension>>? dimensions;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Application Info IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? keyWord;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The product code.
  final pulumi.Input<String> productCode;
  /// The ID of quota action.
  final pulumi.Input<String>? quotaActionCode;
  /// The quota category. Valid values: `CommonQuota`, `FlowControl`, `WhiteListLabel`.
  final pulumi.Input<String>? quotaCategory;
  /// The status of the quota application. Valid Values: `Agree`, `Disagree` and `Process`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetQuotaApplicationsArgs].
  /// [dimensions] The quota dimensions.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Application Info IDs.
  /// [keyWord] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [productCode] The product code.
  /// [quotaActionCode] The ID of quota action.
  /// [quotaCategory] The quota category. Valid values: `CommonQuota`, `FlowControl`, `WhiteListLabel`.
  /// [status] The status of the quota application. Valid Values: `Agree`, `Disagree` and `Process`.
  GetQuotaApplicationsArgs({
    List<GetQuotaApplicationsDimension>? dimensions,
    bool? enableDetails,
    List<String>? ids,
    String? keyWord,
    String? outputFile,
    required String productCode,
    String? quotaActionCode,
    String? quotaCategory,
    String? status,
  }) :
      dimensions = pulumi.Input.asOptionalInput<List<GetQuotaApplicationsDimension>>(dimensions),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      keyWord = pulumi.Input.asOptionalInput<String>(keyWord),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      productCode = pulumi.Input.asInput<String>(productCode),
      quotaActionCode = pulumi.Input.asOptionalInput<String>(quotaActionCode),
      quotaCategory = pulumi.Input.asOptionalInput<String>(quotaCategory),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<GetQuotaApplicationsDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetQuotaApplicationsDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'keyWord': ?keyWord,
      'outputFile': ?outputFile,
      'productCode': productCode,
      'quotaActionCode': ?quotaActionCode,
      'quotaCategory': ?quotaCategory,
      'status': ?status,
    };
  }

  factory GetQuotaApplicationsArgs.fromMap(Map<String, dynamic> map) {
    return GetQuotaApplicationsArgs(
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<GetQuotaApplicationsDimension>(map['dimensions'], (value) => GetQuotaApplicationsDimension.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      keyWord: map['keyWord'] == null ? null : map['keyWord'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      productCode: map['productCode'] as String,
      quotaActionCode: map['quotaActionCode'] == null ? null : map['quotaActionCode'] as String,
      quotaCategory: map['quotaCategory'] == null ? null : map['quotaCategory'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

