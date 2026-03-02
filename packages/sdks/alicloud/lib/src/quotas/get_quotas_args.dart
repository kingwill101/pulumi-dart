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
    this.dimensions,
    this.groupCode,
    this.keyWord,
    this.nameRegex,
    this.outputFile,
    required this.productCode,
    this.quotaActionCode,
    this.quotaCategory,
    this.sortField,
    this.sortOrder,
  });

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
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<GetQuotasDimension>(map['dimensions'], (value) => GetQuotasDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      groupCode: map['groupCode'] == null ? null : (map['groupCode'] as String).input(),
      keyWord: map['keyWord'] == null ? null : (map['keyWord'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      productCode: (map['productCode'] as String).input(),
      quotaActionCode: map['quotaActionCode'] == null ? null : (map['quotaActionCode'] as String).input(),
      quotaCategory: map['quotaCategory'] == null ? null : (map['quotaCategory'] as String).input(),
      sortField: map['sortField'] == null ? null : (map['sortField'] as String).input(),
      sortOrder: map['sortOrder'] == null ? null : (map['sortOrder'] as String).input(),
    );
  }
}

