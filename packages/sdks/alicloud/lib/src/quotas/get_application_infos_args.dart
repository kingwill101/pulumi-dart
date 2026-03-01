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
    pulumi.Output<List<GetApplicationInfosDimension>>? dimensions,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? keyWord,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> productCode,
    pulumi.Output<String>? quotaActionCode,
    pulumi.Output<String>? quotaCategory,
    pulumi.Output<String>? status,
  }) :
      dimensions = pulumi.Input.asOptionalInput<List<GetApplicationInfosDimension>>(dimensions),
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
      dimensions: map['dimensions'] == null ? null : pulumi.Output.create<List<GetApplicationInfosDimension>>(pulumi.Input.decodeList<GetApplicationInfosDimension>(map['dimensions'], (value) => GetApplicationInfosDimension.fromMap((value as Map).cast<String, dynamic>()))),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      keyWord: map['keyWord'] == null ? null : pulumi.Output.create<String>(map['keyWord'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      productCode: pulumi.Output.create<String>(map['productCode'] as String),
      quotaActionCode: map['quotaActionCode'] == null ? null : pulumi.Output.create<String>(map['quotaActionCode'] as String),
      quotaCategory: map['quotaCategory'] == null ? null : pulumi.Output.create<String>(map['quotaCategory'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

