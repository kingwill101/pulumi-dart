// ignore_for_file: unused_element, unnecessary_cast


class LinuxVirtualMachineScaleSetPlan {
  /// Specifies the name of the image from the marketplace. Changing this forces a new resource to be created.
  final String name;
  /// Specifies the product of the image from the marketplace. Changing this forces a new resource to be created.
  final String product;
  /// Specifies the publisher of the image. Changing this forces a new resource to be created.
  final String publisher;

  /// Creates a new [LinuxVirtualMachineScaleSetPlan].
  /// [name] Specifies the name of the image from the marketplace. Changing this forces a new resource to be created.
  /// [product] Specifies the product of the image from the marketplace. Changing this forces a new resource to be created.
  /// [publisher] Specifies the publisher of the image. Changing this forces a new resource to be created.
  LinuxVirtualMachineScaleSetPlan({
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

  factory LinuxVirtualMachineScaleSetPlan.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetPlan(
      name: map['name'] as String,
      product: map['product'] as String,
      publisher: map['publisher'] as String,
    );
  }
}

