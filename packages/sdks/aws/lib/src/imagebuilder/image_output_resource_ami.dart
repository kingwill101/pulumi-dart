// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageOutputResourceAmi {
  /// Account identifier of the AMI.
  final pulumi.Input<String>? accountId;

  /// Description of the AMI.
  final pulumi.Input<String>? description;

  /// Identifier of the AMI.
  final pulumi.Input<String>? image;

  /// Name of the AMI.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

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
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
