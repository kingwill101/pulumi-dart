// ignore_for_file: unused_element, unnecessary_cast


class WindowsVirtualMachinePlan {
  /// Specifies the Name of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  final String name;
  /// Specifies the Product of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  final String product;
  /// Specifies the Publisher of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** If you use the `plan` block with one of Microsoft's marketplace images (e.g. `publisher = "MicrosoftWindowsServer"`). This may prevent the purchase of the offer. An example Azure API error: `The Offer: 'WindowsServer' cannot be purchased by subscription: '12345678-12234-5678-9012-123456789012' as it is not to be sold in market: 'US'. Please choose a subscription which is associated with a different market.`
  final String publisher;

  /// Creates a new [WindowsVirtualMachinePlan].
  /// [name] Specifies the Name of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  /// [product] Specifies the Product of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  /// [publisher] Specifies the Publisher of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
  WindowsVirtualMachinePlan({
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

  factory WindowsVirtualMachinePlan.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachinePlan(
      name: map['name'] as String,
      product: map['product'] as String,
      publisher: map['publisher'] as String,
    );
  }
}

