// ignore_for_file: unused_element, unnecessary_cast


class ServiceTaskSpecContainerSpecPrivilegesCredentialSpec {
  /// Load credential spec from this file
  final String? file;
  /// Load credential spec from this value in the Windows registry
  final String? registry;

  /// Creates a new [ServiceTaskSpecContainerSpecPrivilegesCredentialSpec].
  /// [file] Load credential spec from this file
  /// [registry] Load credential spec from this value in the Windows registry
  ServiceTaskSpecContainerSpecPrivilegesCredentialSpec({
    this.file,
    this.registry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?file,
      'registry': ?registry,
    };
  }

  factory ServiceTaskSpecContainerSpecPrivilegesCredentialSpec.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecPrivilegesCredentialSpec(
      file: map['file'] == null ? null : map['file'] as String,
      registry: map['registry'] == null ? null : map['registry'] as String,
    );
  }
}

