// ignore_for_file: unused_element, unnecessary_cast

class RepositoryCatalogData {
  /// A detailed description of the contents of the repository. It is publicly visible in the Amazon ECR Public Gallery. The text must be in markdown format.
  final String? aboutText;

  /// The system architecture that the images in the repository are compatible with. On the Amazon ECR Public Gallery, the following supported architectures will appear as badges on the repository and are used as search filters: `ARM`, `ARM 64`, <span pulumi-lang-nodejs="`x86`" pulumi-lang-dotnet="`X86`" pulumi-lang-go="`x86`" pulumi-lang-python="`x86`" pulumi-lang-yaml="`x86`" pulumi-lang-java="`x86`">`x86`</span>, `x86-64`
  final List<String>? architectures;

  /// A short description of the contents of the repository. This text appears in both the image details and also when searching for repositories on the Amazon ECR Public Gallery.
  final String? description;

  /// The base64-encoded repository logo payload. (Only visible for verified accounts) Note that drift detection is disabled for this attribute.
  final String? logoImageBlob;

  /// The operating systems that the images in the repository are compatible with. On the Amazon ECR Public Gallery, the following supported operating systems will appear as badges on the repository and are used as search filters: `Linux`, `Windows`
  final List<String>? operatingSystems;

  /// Detailed information on how to use the contents of the repository. It is publicly visible in the Amazon ECR Public Gallery. The usage text provides context, support information, and additional usage details for users of the repository. The text must be in markdown format.
  final String? usageText;

  RepositoryCatalogData({
    this.aboutText,
    this.architectures,
    this.description,
    this.logoImageBlob,
    this.operatingSystems,
    this.usageText,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aboutTextValue = aboutText;
    if (aboutTextValue != null) {
      map['aboutText'] = aboutTextValue;
    }
    final architecturesValue = architectures;
    if (architecturesValue != null) {
      map['architectures'] = architecturesValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final logoImageBlobValue = logoImageBlob;
    if (logoImageBlobValue != null) {
      map['logoImageBlob'] = logoImageBlobValue;
    }
    final operatingSystemsValue = operatingSystems;
    if (operatingSystemsValue != null) {
      map['operatingSystems'] = operatingSystemsValue;
    }
    final usageTextValue = usageText;
    if (usageTextValue != null) {
      map['usageText'] = usageTextValue;
    }
    return map;
  }

  factory RepositoryCatalogData.fromMap(Map<String, dynamic> map) {
    return RepositoryCatalogData(
      aboutText: map['aboutText'] == null ? null : map['aboutText'] as String,
      architectures: map['architectures'] == null
          ? null
          : (map['architectures'] as List).cast<String>(),
      description:
          map['description'] == null ? null : map['description'] as String,
      logoImageBlob:
          map['logoImageBlob'] == null ? null : map['logoImageBlob'] as String,
      operatingSystems: map['operatingSystems'] == null
          ? null
          : (map['operatingSystems'] as List).cast<String>(),
      usageText: map['usageText'] == null ? null : map['usageText'] as String,
    );
  }
}
