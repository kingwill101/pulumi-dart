// ignore_for_file: unused_element, unnecessary_cast


/// AML file system squash settings.
class AmlFilesystemRootSquashSettingsResponse {
  /// Squash mode of the AML file system. 'All': User and Group IDs on files will be squashed to the provided values for all users on non-trusted systems. 'RootOnly': User and Group IDs on files will be squashed to provided values for solely the root user on non-trusted systems. 'None': No squashing of User and Group IDs is performed for any users on any systems.
  final String? mode;
  /// Semicolon separated NID IP Address list(s) to be added to the TrustedSystems.
  final String? noSquashNidLists;
  /// Group ID to squash to.
  final double? squashGID;
  /// User ID to squash to.
  final double? squashUID;
  /// AML file system squash status.
  final String status;

  /// Creates a new [AmlFilesystemRootSquashSettingsResponse].
  /// [mode] Squash mode of the AML file system. 'All': User and Group IDs on files will be squashed to the provided values for all users on non-trusted systems. 'RootOnly': User and Group IDs on files will be squashed to provided values for solely the root user on non-trusted systems. 'None': No squashing of User and Group IDs is performed for any users on any systems.
  /// [noSquashNidLists] Semicolon separated NID IP Address list(s) to be added to the TrustedSystems.
  /// [squashGID] Group ID to squash to.
  /// [squashUID] User ID to squash to.
  /// [status] AML file system squash status.
  AmlFilesystemRootSquashSettingsResponse({
    this.mode,
    this.noSquashNidLists,
    this.squashGID,
    this.squashUID,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'noSquashNidLists': ?noSquashNidLists,
      'squashGID': ?squashGID,
      'squashUID': ?squashUID,
      'status': status,
    };
  }

  factory AmlFilesystemRootSquashSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemRootSquashSettingsResponse(
      mode: map['mode'] == null ? null : map['mode'] as String,
      noSquashNidLists: map['noSquashNidLists'] == null ? null : map['noSquashNidLists'] as String,
      squashGID: map['squashGID'] == null ? null : map['squashGID'] as double,
      squashUID: map['squashUID'] == null ? null : map['squashUID'] as double,
      status: map['status'] as String,
    );
  }
}

