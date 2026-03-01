// ignore_for_file: unused_element, unnecessary_cast


/// AllowedCSIDriver represents a single inline CSI Driver that is allowed to be used.
class AllowedCSIDriverPatch {
  /// Name is the registered name of the CSI driver
  final String? name;

  /// Creates a new [AllowedCSIDriverPatch].
  /// [name] Name is the registered name of the CSI driver
  AllowedCSIDriverPatch({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory AllowedCSIDriverPatch.fromMap(Map<String, dynamic> map) {
    return AllowedCSIDriverPatch(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

