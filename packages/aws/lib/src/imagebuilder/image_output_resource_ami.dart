// ignore_for_file: unused_element, unnecessary_cast

class ImageOutputResourceAmi {
  /// Account identifier of the AMI.
  final String? accountId;

  /// Description of the AMI.
  final String? description;

  /// Identifier of the AMI.
  final String? image;

  /// Name of the AMI.
  final String? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String? region;

  /// Creates a new [ImageOutputResourceAmi].
  /// [accountId] Account identifier of the AMI.
  /// [description] Description of the AMI.
  /// [image] Identifier of the AMI.
  /// [name] Name of the AMI.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ImageOutputResourceAmi({
    this.accountId,
    this.description,
    this.image,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'image': ?image,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ImageOutputResourceAmi.fromMap(Map<String, dynamic> map) {
    return ImageOutputResourceAmi(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      image: map['image'] == null ? null : map['image'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
