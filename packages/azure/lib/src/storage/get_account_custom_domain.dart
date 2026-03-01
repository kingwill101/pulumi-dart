// ignore_for_file: unused_element, unnecessary_cast


class GetAccountCustomDomain {
  /// Specifies the name of the Storage Account
  final String name;

  /// Creates a new [GetAccountCustomDomain].
  /// [name] Specifies the name of the Storage Account
  GetAccountCustomDomain({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetAccountCustomDomain.fromMap(Map<String, dynamic> map) {
    return GetAccountCustomDomain(
      name: map['name'] as String,
    );
  }
}

