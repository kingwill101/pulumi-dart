// ignore_for_file: unused_element, unnecessary_cast

import 'vmresponse.dart';

/// Bastion Shareable Link.
class BastionShareableLinkResponse {
  /// The unique Bastion Shareable Link to the virtual machine.
  final String bsl;
  /// The time when the link was created.
  final String createdAt;
  /// Optional field indicating the warning or error message related to the vm in case of partial failure.
  final String message;
  /// Reference of the virtual machine resource.
  final VMResponse vm;

  /// Creates a new [BastionShareableLinkResponse].
  /// [bsl] The unique Bastion Shareable Link to the virtual machine.
  /// [createdAt] The time when the link was created.
  /// [message] Optional field indicating the warning or error message related to the vm in case of partial failure.
  /// [vm] Reference of the virtual machine resource.
  BastionShareableLinkResponse({
    required this.bsl,
    required this.createdAt,
    required this.message,
    required this.vm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bsl': bsl,
      'createdAt': createdAt,
      'message': message,
      'vm': vm.toMap(),
    };
  }

  factory BastionShareableLinkResponse.fromMap(Map<String, dynamic> map) {
    return BastionShareableLinkResponse(
      bsl: map['bsl'] as String,
      createdAt: map['createdAt'] as String,
      message: map['message'] as String,
      vm: VMResponse.fromMap((map['vm'] as Map).cast<String, dynamic>()),
    );
  }
}

