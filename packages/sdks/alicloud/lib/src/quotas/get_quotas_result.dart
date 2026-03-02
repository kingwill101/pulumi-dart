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
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<GetQuotasDimension, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
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
      'quotas': pulumi.Input.encodeList<GetQuotasQuota, Map<String, dynamic>>(quotas, (value) => value.toMap()),
      'sortField': ?sortField,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetQuotasResult.fromMap(Map<String, dynamic> map) {
    return GetQuotasResult(
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<GetQuotasDimension>(map['dimensions']!, (value) => GetQuotasDimension.fromMap((value as Map).cast<String, dynamic>())),
      groupCode: map['groupCode'] == null ? null : map['groupCode']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyWord: map['keyWord'] == null ? null : map['keyWord']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      productCode: map['productCode'] as String,
      quotaActionCode: map['quotaActionCode'] == null ? null : map['quotaActionCode']! as String,
      quotaCategory: map['quotaCategory'] == null ? null : map['quotaCategory']! as String,
      quotas: pulumi.Input.decodeList<GetQuotasQuota>(map['quotas'], (value) => GetQuotasQuota.fromMap((value as Map).cast<String, dynamic>())),
      sortField: map['sortField'] == null ? null : map['sortField']! as String,
      sortOrder: map['sortOrder'] == null ? null : map['sortOrder']! as String,
    );
  }
}

