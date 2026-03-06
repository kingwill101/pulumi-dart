// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_infos_application.dart';
import 'get_application_infos_dimension.dart';

/// Result data returned by getApplicationInfos.
class GetApplicationInfosResult {
  final List<GetApplicationInfosApplication> applications;
  final List<GetApplicationInfosDimension>? dimensions;
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

  /// Creates a new [GetApplicationInfosResult].
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
  const GetApplicationInfosResult({
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
      'applications': pulumi.Input.encodeList<GetApplicationInfosApplication, Map<String, dynamic>>(applications, (value) => value.toMap()),
      'dimensions': ?(() { final guardedValue = dimensions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationInfosDimension, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
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

  factory GetApplicationInfosResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationInfosResult(
      applications: pulumi.Input.decodeList<GetApplicationInfosApplication>(map['applications']!, (value) => GetApplicationInfosApplication.fromMap((value as Map).cast<String, dynamic>())),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationInfosDimension>(guardedValue, (value) => GetApplicationInfosDimension.fromMap((value as Map).cast<String, dynamic>())); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyWord: (() { final guardedValue = map['keyWord']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productCode: map['productCode'] as String,
      quotaActionCode: (() { final guardedValue = map['quotaActionCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quotaCategory: (() { final guardedValue = map['quotaCategory']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

