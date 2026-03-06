// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_basic_accelerators_accelerator.dart';

/// Result data returned by getBasicAccelerators.
class GetBasicAcceleratorsResult {
  final String? acceleratorId;
  /// A list of Global Accelerator Basic Accelerators. Each element contains the following attributes:
  final List<GetBasicAcceleratorsAccelerator> accelerators;
  /// The bandwidth billing method.
  final String? bandwidthBillingType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Global Accelerator Basic Accelerator names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The status of the Global Accelerator Basic Accelerator instance.
  final String? status;

  /// Creates a new [GetBasicAcceleratorsResult].
  /// [acceleratorId] Optional.
  /// [accelerators] A list of Global Accelerator Basic Accelerators. Each element contains the following attributes:
  /// [bandwidthBillingType] The bandwidth billing method.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Global Accelerator Basic Accelerator names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The status of the Global Accelerator Basic Accelerator instance.
  const GetBasicAcceleratorsResult({
    this.acceleratorId,
    required this.accelerators,
    this.bandwidthBillingType,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'accelerators': pulumi.Input.encodeList<GetBasicAcceleratorsAccelerator, Map<String, dynamic>>(accelerators, (value) => value.toMap()),
      'bandwidthBillingType': ?bandwidthBillingType,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetBasicAcceleratorsResult.fromMap(Map<String, dynamic> map) {
    return GetBasicAcceleratorsResult(
      acceleratorId: (() { final guardedValue = map['acceleratorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accelerators: pulumi.Input.decodeList<GetBasicAcceleratorsAccelerator>(map['accelerators']!, (value) => GetBasicAcceleratorsAccelerator.fromMap((value as Map).cast<String, dynamic>())),
      bandwidthBillingType: (() { final guardedValue = map['bandwidthBillingType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

