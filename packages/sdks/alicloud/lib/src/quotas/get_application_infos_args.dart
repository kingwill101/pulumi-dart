// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_infos_dimension.dart';

/// {@template pulumi_quotas_get_application_infos_get_application_infos_args_doc}
/// Arguments for getApplicationInfos.
/// {@endtemplate}
/// {@macro pulumi_quotas_get_application_infos_get_application_infos_args_doc}
class GetApplicationInfosArgs {
  final pulumi.Input<List<GetApplicationInfosDimension>>? dimensions;
  final pulumi.Input<bool>? enableDetails;
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? keyWord;
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String> productCode;
  final pulumi.Input<String>? quotaActionCode;
  final pulumi.Input<String>? quotaCategory;
  final pulumi.Input<String>? status;

  /// Creates a new [GetApplicationInfosArgs].
  /// [dimensions] Optional.
  /// [enableDetails] Optional.
  /// [ids] Optional.
  /// [keyWord] Optional.
  /// [outputFile] Optional.
  /// [productCode] Required.
  /// [quotaActionCode] Optional.
  /// [quotaCategory] Optional.
  /// [status] Optional.
  GetApplicationInfosArgs({
    this.dimensions,
    this.enableDetails,
    this.ids,
    this.keyWord,
    this.outputFile,
    required this.productCode,
    this.quotaActionCode,
    this.quotaCategory,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<GetApplicationInfosDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetApplicationInfosDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory GetApplicationInfosArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationInfosArgs(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationInfosDimension>(guardedValue, (value) => GetApplicationInfosDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keyWord: (() { final guardedValue = map['keyWord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      quotaActionCode: (() { final guardedValue = map['quotaActionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaCategory: (() { final guardedValue = map['quotaCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

