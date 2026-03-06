// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmresponse.dart';

/// Bastion Shareable Link.
class BastionShareableLinkResponse {
  /// The unique Bastion Shareable Link to the virtual machine.
  final pulumi.Input<String> bsl;
  /// The time when the link was created.
  final pulumi.Input<String> createdAt;
  /// Optional field indicating the warning or error message related to the vm in case of partial failure.
  final pulumi.Input<String> message;
  /// Reference of the virtual machine resource.
  final pulumi.Input<VMResponse> vm;

  /// Creates a new [BastionShareableLinkResponse].
  /// [bsl] The unique Bastion Shareable Link to the virtual machine.
  /// [createdAt] The time when the link was created.
  /// [message] Optional field indicating the warning or error message related to the vm in case of partial failure.
  /// [vm] Reference of the virtual machine resource.
  const BastionShareableLinkResponse({
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
      'vm': pulumi.Input.mapInputValue<VMResponse, Map<String, dynamic>>(vm, (value) => value.toMap()),
    };
  }

  factory BastionShareableLinkResponse.fromMap(Map<String, dynamic> map) {
    return BastionShareableLinkResponse(
      bsl: pulumi.Input.fromValue(map['bsl'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      vm: pulumi.Input.fromValue(VMResponse.fromMap((map['vm']! as Map).cast<String, dynamic>())),
    );
  }
}

