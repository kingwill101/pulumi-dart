// ignore_for_file: unused_element, unnecessary_cast


class LinuxVirtualMachinePlan {
  /// Specifies the Name of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  final String name;
  /// Specifies the Product of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  final String product;
  /// Specifies the Publisher of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  final String publisher;

  /// Creates a new [LinuxVirtualMachinePlan].
  /// [name] Specifies the Name of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  /// [product] Specifies the Product of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  /// [publisher] Specifies the Publisher of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  LinuxVirtualMachinePlan({
    required this.name,
    required this.product,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': product,
      'publisher': publisher,
    };
  }

  factory LinuxVirtualMachinePlan.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachinePlan(
      name: map['name'] as String,
      product: map['product'] as String,
      publisher: map['publisher'] as String,
    );
  }
}

