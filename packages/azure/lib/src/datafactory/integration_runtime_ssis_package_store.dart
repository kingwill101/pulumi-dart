// ignore_for_file: unused_element, unnecessary_cast


class IntegrationRuntimeSsisPackageStore {
  /// Name of the Linked Service to associate with the packages.
  final String linkedServiceName;
  /// Name of the package store.
  final String name;

  /// Creates a new [IntegrationRuntimeSsisPackageStore].
  /// [linkedServiceName] Name of the Linked Service to associate with the packages.
  /// [name] Name of the package store.
  IntegrationRuntimeSsisPackageStore({
    required this.linkedServiceName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'name': name,
    };
  }

  factory IntegrationRuntimeSsisPackageStore.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisPackageStore(
      linkedServiceName: map['linkedServiceName'] as String,
      name: map['name'] as String,
    );
  }
}

