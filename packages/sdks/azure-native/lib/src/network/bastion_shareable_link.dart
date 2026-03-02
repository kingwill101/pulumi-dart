// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm.dart';

/// Bastion Shareable Link.
class BastionShareableLink {
  /// Reference of the virtual machine resource.
  final pulumi.Input<VM> vm;

  /// Creates a new [BastionShareableLink].
  /// [vm] Reference of the virtual machine resource.
  BastionShareableLink({
    required this.vm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vm': pulumi.Input.mapInputValue<VM, Map<String, dynamic>>(vm, (value) => value.toMap()),
    };
  }

  factory BastionShareableLink.fromMap(Map<String, dynamic> map) {
    return BastionShareableLink(
      vm: (VM.fromMap((map['vm'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

