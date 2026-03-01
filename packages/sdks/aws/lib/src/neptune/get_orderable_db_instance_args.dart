// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_neptune_get_orderable_db_instance_get_orderable_db_instance_args_doc}
/// Arguments for getOrderableDbInstance.
/// {@endtemplate}
/// {@macro pulumi_neptune_get_orderable_db_instance_get_orderable_db_instance_args_doc}
class GetOrderableDbInstanceArgs {
  /// DB engine. (Default: `neptune`)
  final pulumi.Input<String>? engine;
  /// Version of the DB engine. For example, `1.0.1.0`, `1.0.1.2`, `1.0.2.2`, and `1.0.3.0`.
  final pulumi.Input<String>? engineVersion;
  /// DB instance class. Examples of classes are `db.r5.large`, `db.r5.xlarge`, `db.r4.large`, `db.r5.4xlarge`, `db.r5.12xlarge`, `db.r4.xlarge`, and `db.t3.medium`.
  final pulumi.Input<String>? instanceClass;
  /// License model. (Default: `amazon-license`)
  final pulumi.Input<String>? licenseModel;
  /// Ordered list of preferred Neptune DB instance classes. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned.
  final pulumi.Input<List<String>>? preferredInstanceClasses;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Enable to show only VPC offerings.
  final pulumi.Input<bool>? vpc;

  /// Creates a new [GetOrderableDbInstanceArgs].
  /// [engine] DB engine. (Default: `neptune`)
  /// [engineVersion] Version of the DB engine. For example, `1.0.1.0`, `1.0.1.2`, `1.0.2.2`, and `1.0.3.0`.
  /// [instanceClass] DB instance class. Examples of classes are `db.r5.large`, `db.r5.xlarge`, `db.r4.large`, `db.r5.4xlarge`, `db.r5.12xlarge`, `db.r4.xlarge`, and `db.t3.medium`.
  /// [licenseModel] License model. (Default: `amazon-license`)
  /// [preferredInstanceClasses] Ordered list of preferred Neptune DB instance classes. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpc] Enable to show only VPC offerings.
  GetOrderableDbInstanceArgs({
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? instanceClass,
    pulumi.Output<String>? licenseModel,
    pulumi.Output<List<String>>? preferredInstanceClasses,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? vpc,
  }) :
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      instanceClass = pulumi.Input.asOptionalInput<String>(instanceClass),
      licenseModel = pulumi.Input.asOptionalInput<String>(licenseModel),
      preferredInstanceClasses = pulumi.Input.asOptionalInput<List<String>>(preferredInstanceClasses),
      region = pulumi.Input.asOptionalInput<String>(region),
      vpc = pulumi.Input.asOptionalInput<bool>(vpc);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'instanceClass': ?instanceClass,
      'licenseModel': ?licenseModel,
      'preferredInstanceClasses': ?preferredInstanceClasses,
      'region': ?region,
      'vpc': ?vpc,
    };
  }

  factory GetOrderableDbInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetOrderableDbInstanceArgs(
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      instanceClass: map['instanceClass'] == null ? null : pulumi.Output.create<String>(map['instanceClass'] as String),
      licenseModel: map['licenseModel'] == null ? null : pulumi.Output.create<String>(map['licenseModel'] as String),
      preferredInstanceClasses: map['preferredInstanceClasses'] == null ? null : pulumi.Output.create<List<String>>((map['preferredInstanceClasses'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vpc: map['vpc'] == null ? null : pulumi.Output.create<bool>(map['vpc'] as bool),
    );
  }
}

