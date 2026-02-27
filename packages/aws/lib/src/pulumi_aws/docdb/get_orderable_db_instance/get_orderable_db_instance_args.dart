// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrderableDbInstance.
class GetOrderableDbInstanceArgs {
  /// DB engine. Default: `docdb`
  final Input<String>? engine;

  /// Version of the DB engine.
  final Input<String>? engineVersion;

  /// DB instance class. Examples of classes are `db.r5.12xlarge`, `db.r5.24xlarge`, `db.r5.2xlarge`, `db.r5.4xlarge`, `db.r5.large`, `db.r5.xlarge`, and `db.t3.medium`. (Conflicts with `preferred_instance_classes`.)
  final Input<String>? instanceClass;

  /// License model. Default: `na`
  final Input<String>? licenseModel;

  /// Ordered list of preferred DocumentDB DB instance classes. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. (Conflicts with `instance_class`.)
  final Input<List<String>>? preferredInstanceClasses;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Enable to show only VPC.
  final Input<bool>? vpc;

  GetOrderableDbInstanceArgs({
    this.engine,
    this.engineVersion,
    this.instanceClass,
    this.licenseModel,
    this.preferredInstanceClasses,
    this.region,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final instanceClassValue = instanceClass;
    if (instanceClassValue != null) {
      map['instanceClass'] = instanceClassValue;
    }
    final licenseModelValue = licenseModel;
    if (licenseModelValue != null) {
      map['licenseModel'] = licenseModelValue;
    }
    final preferredInstanceClassesValue = preferredInstanceClasses;
    if (preferredInstanceClassesValue != null) {
      map['preferredInstanceClasses'] = preferredInstanceClassesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final vpcValue = vpc;
    if (vpcValue != null) {
      map['vpc'] = vpcValue;
    }
    return map;
  }

  factory GetOrderableDbInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetOrderableDbInstanceArgs(
      engine: Input.asOptionalInput<String>(map['engine']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      instanceClass: Input.asOptionalInput<String>(map['instanceClass']),
      licenseModel: Input.asOptionalInput<String>(map['licenseModel']),
      preferredInstanceClasses:
          Input.asOptionalInput<List<String>>(map['preferredInstanceClasses']),
      region: Input.asOptionalInput<String>(map['region']),
      vpc: Input.asOptionalInput<bool>(map['vpc']),
    );
  }
}
