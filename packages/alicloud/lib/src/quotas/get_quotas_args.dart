// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quotas_dimension.dart';

/// {@template pulumi_quotas_get_quotas_get_quotas_args_doc}
/// Arguments for getQuotas.
/// {@endtemplate}
/// {@macro pulumi_quotas_get_quotas_get_quotas_args_doc}
class GetQuotasArgs {
  /// The dimensions.
  final pulumi.Input<List<GetQuotasDimension>>? dimensions;
  /// The group code.
  final pulumi.Input<String>? groupCode;
  /// The key word.
  final pulumi.Input<String>? keyWord;
  /// A regex string to filter results by Quota name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The product code.
  final pulumi.Input<String> productCode;
  /// The quota action code.
  final pulumi.Input<String>? quotaActionCode;
  /// The category of quota. Valid Values: `FlowControl` and `CommonQuota`, `WhiteListLabel`.
  final pulumi.Input<String>? quotaCategory;
  /// Cloud service ECS specification quota supports setting sorting fields. Valid Values: `TIME`, `TOTAL` and `RESERVED`.
  final pulumi.Input<String>? sortField;
  /// Ranking of cloud service ECS specification quota support. Valid Values: `Ascending` and `Descending`.
  final pulumi.Input<String>? sortOrder;

  /// Creates a new [GetQuotasArgs].
  /// [dimensions] The dimensions.
  /// [groupCode] The group code.
  /// [keyWord] The key word.
  /// [nameRegex] A regex string to filter results by Quota name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [productCode] The product code.
  /// [quotaActionCode] The quota action code.
  /// [quotaCategory] The category of quota. Valid Values: `FlowControl` and `CommonQuota`, `WhiteListLabel`.
  /// [sortField] Cloud service ECS specification quota supports setting sorting fields. Valid Values: `TIME`, `TOTAL` and `RESERVED`.
  /// [sortOrder] Ranking of cloud service ECS specification quota support. Valid Values: `Ascending` and `Descending`.
  GetQuotasArgs({
    List<GetQuotasDimension>? dimensions,
    String? groupCode,
    String? keyWord,
    String? nameRegex,
    String? outputFile,
    required String productCode,
    String? quotaActionCode,
    String? quotaCategory,
    String? sortField,
    String? sortOrder,
  }) :
      dimensions = pulumi.Input.asOptionalInput<List<GetQuotasDimension>>(dimensions),
      groupCode = pulumi.Input.asOptionalInput<String>(groupCode),
      keyWord = pulumi.Input.asOptionalInput<String>(keyWord),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      productCode = pulumi.Input.asInput<String>(productCode),
      quotaActionCode = pulumi.Input.asOptionalInput<String>(quotaActionCode),
      quotaCategory = pulumi.Input.asOptionalInput<String>(quotaCategory),
      sortField = pulumi.Input.asOptionalInput<String>(sortField),
      sortOrder = pulumi.Input.asOptionalInput<String>(sortOrder);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<GetQuotasDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetQuotasDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupCode': ?groupCode,
      'keyWord': ?keyWord,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'productCode': productCode,
      'quotaActionCode': ?quotaActionCode,
      'quotaCategory': ?quotaCategory,
      'sortField': ?sortField,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetQuotasArgs.fromMap(Map<String, dynamic> map) {
    return GetQuotasArgs(
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<GetQuotasDimension>(map['dimensions'], (value) => GetQuotasDimension.fromMap((value as Map).cast<String, dynamic>())),
      groupCode: map['groupCode'] == null ? null : map['groupCode'] as String,
      keyWord: map['keyWord'] == null ? null : map['keyWord'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      productCode: map['productCode'] as String,
      quotaActionCode: map['quotaActionCode'] == null ? null : map['quotaActionCode'] as String,
      quotaCategory: map['quotaCategory'] == null ? null : map['quotaCategory'] as String,
      sortField: map['sortField'] == null ? null : map['sortField'] as String,
      sortOrder: map['sortOrder'] == null ? null : map['sortOrder'] as String,
    );
  }
}

