// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accelerators_accelerator.dart';

/// Result data returned by getAccelerators.
class GetAcceleratorsResult {
  /// A list of Ga Accelerators. Each element contains the following attributes:
  final List<GetAcceleratorsAccelerator> accelerators;
  final String? bandwidthBillingType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Accelerator names.
  final List<String> names;
  final String? outputFile;
  /// The status of the GA instance.
  final String? status;

  /// Creates a new [GetAcceleratorsResult].
  /// [accelerators] A list of Ga Accelerators. Each element contains the following attributes:
  /// [bandwidthBillingType] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Accelerator names.
  /// [outputFile] Optional.
  /// [status] The status of the GA instance.
  GetAcceleratorsResult({
    required this.accelerators,
    this.bandwidthBillingType,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': pulumi.Input.encodeList<GetAcceleratorsAccelerator, Map<String, dynamic>>(accelerators, (value) => value.toMap()),
      'bandwidthBillingType': ?bandwidthBillingType,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAcceleratorsResult.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorsResult(
      accelerators: pulumi.Input.decodeList<GetAcceleratorsAccelerator>(map['accelerators'], (value) => GetAcceleratorsAccelerator.fromMap((value as Map).cast<String, dynamic>())),
      bandwidthBillingType: map['bandwidthBillingType'] == null ? null : map['bandwidthBillingType']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

