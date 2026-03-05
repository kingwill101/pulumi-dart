// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryCatalogData {
  /// A detailed description of the contents of the repository. It is publicly visible in the Amazon ECR Public Gallery. The text must be in markdown format.
  final pulumi.Input<String>? aboutText;
  /// The system architecture that the images in the repository are compatible with. On the Amazon ECR Public Gallery, the following supported architectures will appear as badges on the repository and are used as search filters: `ARM`, `ARM 64`, `x86`, `x86-64`
  final pulumi.Input<List<String>>? architectures;
  /// A short description of the contents of the repository. This text appears in both the image details and also when searching for repositories on the Amazon ECR Public Gallery.
  final pulumi.Input<String>? description;
  /// The base64-encoded repository logo payload. (Only visible for verified accounts) Note that drift detection is disabled for this attribute.
  final pulumi.Input<String>? logoImageBlob;
  /// The operating systems that the images in the repository are compatible with. On the Amazon ECR Public Gallery, the following supported operating systems will appear as badges on the repository and are used as search filters: `Linux`, `Windows`
  final pulumi.Input<List<String>>? operatingSystems;
  /// Detailed information on how to use the contents of the repository. It is publicly visible in the Amazon ECR Public Gallery. The usage text provides context, support information, and additional usage details for users of the repository. The text must be in markdown format.
  final pulumi.Input<String>? usageText;

  /// Creates a new [RepositoryCatalogData].
  /// [aboutText] A detailed description of the contents of the repository. It is publicly visible in the Amazon ECR Public Gallery. The text must be in markdown format.
  /// [architectures] The system architecture that the images in the repository are compatible with. On the Amazon ECR Public Gallery, the following supported architectures will appear as badges on the repository and are used as search filters: `ARM`, `ARM 64`, `x86`, `x86-64`
  /// [description] A short description of the contents of the repository. This text appears in both the image details and also when searching for repositories on the Amazon ECR Public Gallery.
  /// [logoImageBlob] The base64-encoded repository logo payload. (Only visible for verified accounts) Note that drift detection is disabled for this attribute.
  /// [operatingSystems] The operating systems that the images in the repository are compatible with. On the Amazon ECR Public Gallery, the following supported operating systems will appear as badges on the repository and are used as search filters: `Linux`, `Windows`
  /// [usageText] Detailed information on how to use the contents of the repository. It is publicly visible in the Amazon ECR Public Gallery. The usage text provides context, support information, and additional usage details for users of the repository. The text must be in markdown format.
  RepositoryCatalogData({
    this.aboutText,
    this.architectures,
    this.description,
    this.logoImageBlob,
    this.operatingSystems,
    this.usageText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aboutText': ?aboutText,
      'architectures': ?architectures,
      'description': ?description,
      'logoImageBlob': ?logoImageBlob,
      'operatingSystems': ?operatingSystems,
      'usageText': ?usageText,
    };
  }

  factory RepositoryCatalogData.fromMap(Map<String, dynamic> map) {
    return RepositoryCatalogData(
      aboutText: (() { final guardedValue = map['aboutText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      architectures: (() { final guardedValue = map['architectures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logoImageBlob: (() { final guardedValue = map['logoImageBlob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatingSystems: (() { final guardedValue = map['operatingSystems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      usageText: (() { final guardedValue = map['usageText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

