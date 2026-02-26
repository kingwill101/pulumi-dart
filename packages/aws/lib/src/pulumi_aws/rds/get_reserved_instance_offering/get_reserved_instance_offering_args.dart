// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getReservedInstanceOffering.
class GetReservedInstanceOfferingArgs {
  /// DB instance class for the reserved DB instance.
  final Input<String> dbInstanceClass;

  /// Duration of the reservation in years or seconds. Valid values are <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>, <span pulumi-lang-nodejs="`3`" pulumi-lang-dotnet="`3`" pulumi-lang-go="`3`" pulumi-lang-python="`3`" pulumi-lang-yaml="`3`" pulumi-lang-java="`3`">`3`</span>, <span pulumi-lang-nodejs="`31536000`" pulumi-lang-dotnet="`31536000`" pulumi-lang-go="`31536000`" pulumi-lang-python="`31536000`" pulumi-lang-yaml="`31536000`" pulumi-lang-java="`31536000`">`31536000`</span>, <span pulumi-lang-nodejs="`94608000`" pulumi-lang-dotnet="`94608000`" pulumi-lang-go="`94608000`" pulumi-lang-python="`94608000`" pulumi-lang-yaml="`94608000`" pulumi-lang-java="`94608000`">`94608000`</span>
  final Input<int> duration;

  /// Whether the reservation applies to Multi-AZ deployments.
  final Input<bool> multiAz;

  /// Offering type of this reserved DB instance. Valid values are `No Upfront`, `Partial Upfront`, `All Upfront`.
  final Input<String> offeringType;

  /// Description of the reserved DB instance. Example values are <span pulumi-lang-nodejs="`postgresql`" pulumi-lang-dotnet="`Postgresql`" pulumi-lang-go="`postgresql`" pulumi-lang-python="`postgresql`" pulumi-lang-yaml="`postgresql`" pulumi-lang-java="`postgresql`">`postgresql`</span>, `aurora-postgresql`, <span pulumi-lang-nodejs="`mysql`" pulumi-lang-dotnet="`Mysql`" pulumi-lang-go="`mysql`" pulumi-lang-python="`mysql`" pulumi-lang-yaml="`mysql`" pulumi-lang-java="`mysql`">`mysql`</span>, `aurora-mysql`, <span pulumi-lang-nodejs="`mariadb`" pulumi-lang-dotnet="`Mariadb`" pulumi-lang-go="`mariadb`" pulumi-lang-python="`mariadb`" pulumi-lang-yaml="`mariadb`" pulumi-lang-java="`mariadb`">`mariadb`</span>.
  final Input<String> productDescription;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetReservedInstanceOfferingArgs({
    required this.dbInstanceClass,
    required this.duration,
    required this.multiAz,
    required this.offeringType,
    required this.productDescription,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dbInstanceClass'] = dbInstanceClass;
    map['duration'] = duration;
    map['multiAz'] = multiAz;
    map['offeringType'] = offeringType;
    map['productDescription'] = productDescription;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetReservedInstanceOfferingArgs.fromMap(Map<String, dynamic> map) {
    return GetReservedInstanceOfferingArgs(
      dbInstanceClass: Input.asInput<String>(map['dbInstanceClass']),
      duration: Input.asInput<int>(map['duration']),
      multiAz: Input.asInput<bool>(map['multiAz']),
      offeringType: Input.asInput<String>(map['offeringType']),
      productDescription: Input.asInput<String>(map['productDescription']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
