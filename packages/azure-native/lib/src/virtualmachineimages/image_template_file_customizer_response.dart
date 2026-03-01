// ignore_for_file: unused_element, unnecessary_cast


/// Uploads files to VMs (Linux, Windows). Corresponds to Packer file provisioner
class ImageTemplateFileCustomizerResponse {
  /// The absolute path to a file (with nested directory structures already created) where the file (from sourceUri) will be uploaded to in the VM
  final String? destination;
  /// Friendly Name to provide context on what this customization step does
  final String? name;
  /// SHA256 checksum of the file provided in the sourceUri field above
  final String? sha256Checksum;
  /// The URI of the file to be uploaded for customizing the VM. It can be a github link, SAS URI for Azure Storage, etc
  final String? sourceUri;
  /// The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  /// Expected value is 'File'.
  final String type;

  /// Creates a new [ImageTemplateFileCustomizerResponse].
  /// [destination] The absolute path to a file (with nested directory structures already created) where the file (from sourceUri) will be uploaded to in the VM
  /// [name] Friendly Name to provide context on what this customization step does
  /// [sha256Checksum] SHA256 checksum of the file provided in the sourceUri field above
  /// [sourceUri] The URI of the file to be uploaded for customizing the VM. It can be a github link, SAS URI for Azure Storage, etc
  /// [type] The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  ImageTemplateFileCustomizerResponse({
    this.destination,
    this.name,
    this.sha256Checksum,
    this.sourceUri,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'name': ?name,
      'sha256Checksum': ?sha256Checksum,
      'sourceUri': ?sourceUri,
      'type': type,
    };
  }

  factory ImageTemplateFileCustomizerResponse.fromMap(Map<String, dynamic> map) {
    return ImageTemplateFileCustomizerResponse(
      destination: map['destination'] == null ? null : map['destination'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      sha256Checksum: map['sha256Checksum'] == null ? null : map['sha256Checksum'] as String,
      sourceUri: map['sourceUri'] == null ? null : map['sourceUri'] as String,
      type: map['type'] as String,
    );
  }
}

