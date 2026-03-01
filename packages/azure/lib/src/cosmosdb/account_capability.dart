// ignore_for_file: unused_element, unnecessary_cast


class AccountCapability {
  /// Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created.
  final String name;

  /// Creates a new [AccountCapability].
  /// [name] Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created.
  AccountCapability({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory AccountCapability.fromMap(Map<String, dynamic> map) {
    return AccountCapability(
      name: map['name'] as String,
    );
  }
}

