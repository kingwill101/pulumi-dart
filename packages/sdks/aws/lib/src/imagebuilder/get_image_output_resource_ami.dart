// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageOutputResourceAmi {
  /// Account identifier of the AMI.
  final pulumi.Input<String> accountId;
  /// Description of the AMI.
  final pulumi.Input<String> description;
  /// Identifier of the AMI.
  final pulumi.Input<String> image;
  /// Name of the AMI.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;

  /// Creates a new [GetImageOutputResourceAmi].
  /// [accountId] Account identifier of the AMI.
  /// [description] Description of the AMI.
  /// [image] Identifier of the AMI.
  /// [name] Name of the AMI.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetImageOutputResourceAmi({
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
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      image: pulumi.Input.fromValue(map['image'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

