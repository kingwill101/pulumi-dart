// ignore_for_file: unused_element, unnecessary_cast

import 'vm.dart';

/// Bastion Shareable Link.
class BastionShareableLink {
  /// Reference of the virtual machine resource.
  final VM vm;

  /// Creates a new [BastionShareableLink].
  /// [vm] Reference of the virtual machine resource.
  BastionShareableLink({
    required this.vm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vm': vm.toMap(),
    };
  }

  factory BastionShareableLink.fromMap(Map<String, dynamic> map) {
    return BastionShareableLink(
      vm: VM.fromMap((map['vm'] as Map).cast<String, dynamic>()),
    );
  }
}

