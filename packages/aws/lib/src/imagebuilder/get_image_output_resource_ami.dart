// ignore_for_file: unused_element, unnecessary_cast

class GetImageOutputResourceAmi {
  /// Account identifier of the AMI.
  final String accountId;

  /// Description of the AMI.
  final String description;

  /// Identifier of the AMI.
  final String image;

  /// Name of the AMI.
  final String name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String region;

  /// Creates a new [GetImageOutputResourceAmi].
  /// [accountId] Account identifier of the AMI.
  /// [description] Description of the AMI.
  /// [image] Identifier of the AMI.
  /// [name] Name of the AMI.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetImageOutputResourceAmi({
    required this.accountId,
    required this.description,
    required this.image,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': description,
      'image': image,
      'name': name,
      'region': region,
    };
  }

  factory GetImageOutputResourceAmi.fromMap(Map<String, dynamic> map) {
    return GetImageOutputResourceAmi(
      accountId: map['accountId'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
