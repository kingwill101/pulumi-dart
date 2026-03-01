// ignore_for_file: unused_element, unnecessary_cast


class GetAccountCapability {
  /// Specifies the name of the CosmosDB Account.
  final String name;

  /// Creates a new [GetAccountCapability].
  /// [name] Specifies the name of the CosmosDB Account.
  GetAccountCapability({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetAccountCapability.fromMap(Map<String, dynamic> map) {
    return GetAccountCapability(
      name: map['name'] as String,
    );
  }
}

