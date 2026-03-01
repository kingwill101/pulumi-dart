// ignore_for_file: unused_element, unnecessary_cast


/// Schema for MSIX Package Application properties.
class MsixPackageApplicationsResponse {
  /// Package Application Id, found in appxmanifest.xml.
  final String? appId;
  /// Used to activate Package Application. Consists of Package Name and ApplicationID. Found in appxmanifest.xml.
  final String? appUserModelID;
  /// Description of Package Application.
  final String? description;
  /// User friendly name.
  final String? friendlyName;
  /// User friendly name.
  final String? iconImageName;
  /// the icon a 64 bit string as a byte array.
  final String? rawIcon;
  /// the icon a 64 bit string as a byte array.
  final String? rawPng;

  /// Creates a new [MsixPackageApplicationsResponse].
  /// [appId] Package Application Id, found in appxmanifest.xml.
  /// [appUserModelID] Used to activate Package Application. Consists of Package Name and ApplicationID. Found in appxmanifest.xml.
  /// [description] Description of Package Application.
  /// [friendlyName] User friendly name.
  /// [iconImageName] User friendly name.
  /// [rawIcon] the icon a 64 bit string as a byte array.
  /// [rawPng] the icon a 64 bit string as a byte array.
  MsixPackageApplicationsResponse({
    this.appId,
    this.appUserModelID,
    this.description,
    this.friendlyName,
    this.iconImageName,
    this.rawIcon,
    this.rawPng,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'appUserModelID': ?appUserModelID,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'iconImageName': ?iconImageName,
      'rawIcon': ?rawIcon,
      'rawPng': ?rawPng,
    };
  }

  factory MsixPackageApplicationsResponse.fromMap(Map<String, dynamic> map) {
    return MsixPackageApplicationsResponse(
      appId: map['appId'] == null ? null : map['appId'] as String,
      appUserModelID: map['appUserModelID'] == null ? null : map['appUserModelID'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      iconImageName: map['iconImageName'] == null ? null : map['iconImageName'] as String,
      rawIcon: map['rawIcon'] == null ? null : map['rawIcon'] as String,
      rawPng: map['rawPng'] == null ? null : map['rawPng'] as String,
    );
  }
}

