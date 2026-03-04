// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quotas_dimension.dart';
import 'get_quotas_quota.dart';

/// Result data returned by getQuotas.
class GetQuotasResult {
  final List<GetQuotasDimension>? dimensions;
  final String? groupCode;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyWord;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String productCode;
  final String? quotaActionCode;
  final String? quotaCategory;
  final List<GetQuotasQuota> quotas;
  final String? sortField;
  final String? sortOrder;

  /// Creates a new [GetQuotasResult].
  /// [dimensions] Optional.
  /// [groupCode] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyWord] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [productCode] Required.
  /// [quotaActionCode] Optional.
  /// [quotaCategory] Optional.
  /// [quotas] Required.
  /// [sortField] Optional.
  /// [sortOrder] Optional.
  GetQuotasResult({
    this.dimensions,
    this.groupCode,
    required this.id,
    required this.ids,
    this.keyWord,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.productCode,
    this.quotaActionCode,
    this.quotaCategory,
    required this.quotas,
    this.sortField,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?(() {
        final guardedValue = dimensions;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetQuotasDimension,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'groupCode': ?groupCode,
      'id': id,
      'ids': ids,
      'keyWord': ?keyWord,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'productCode': productCode,
      'quotaActionCode': ?quotaActionCode,
      'quotaCategory': ?quotaCategory,
      'quotas': pulumi.Input.encodeList<GetQuotasQuota, Map<String, dynamic>>(
        quotas,
        (value) => value.toMap(),
      ),
      'sortField': ?sortField,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetQuotasResult.fromMap(Map<String, dynamic> map) {
    return GetQuotasResult(
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetQuotasDimension>(
          guardedValue,
          (value) => GetQuotasDimension.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      groupCode: (() {
        final guardedValue = map['groupCode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyWord: (() {
        final guardedValue = map['keyWord'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      productCode: map['productCode'] as String,
      quotaActionCode: (() {
        final guardedValue = map['quotaActionCode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      quotaCategory: (() {
        final guardedValue = map['quotaCategory'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      quotas: pulumi.Input.decodeList<GetQuotasQuota>(
        map['quotas']!,
        (value) =>
            GetQuotasQuota.fromMap((value as Map).cast<String, dynamic>()),
      ),
      sortField: (() {
        final guardedValue = map['sortField'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sortOrder: (() {
        final guardedValue = map['sortOrder'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
