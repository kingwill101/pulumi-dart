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
      'dimensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetQuotasDimension>,
            List<Map<String, dynamic>>
          >(
            dimensions,
            (value) =>
                pulumi.Input.encodeList<
                  GetQuotasDimension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetQuotasDimension>(
            guardedValue,
            (value) => GetQuotasDimension.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      groupCode: (() {
        final guardedValue = map['groupCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyWord: (() {
        final guardedValue = map['keyWord'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      quotaActionCode: (() {
        final guardedValue = map['quotaActionCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quotaCategory: (() {
        final guardedValue = map['quotaCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sortField: (() {
        final guardedValue = map['sortField'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sortOrder: (() {
        final guardedValue = map['sortOrder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
