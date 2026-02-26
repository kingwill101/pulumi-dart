// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../default_credit_specification_timeouts/default_credit_specification_timeouts.dart';

/// The set of arguments for DefaultCreditSpecification.
class DefaultCreditSpecificationArgs {
  /// Credit option for CPU usage of the instance family. Valid values: <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, <span pulumi-lang-nodejs="`unlimited`" pulumi-lang-dotnet="`Unlimited`" pulumi-lang-go="`unlimited`" pulumi-lang-python="`unlimited`" pulumi-lang-yaml="`unlimited`" pulumi-lang-java="`unlimited`">`unlimited`</span>.
  final Input<String> cpuCredits;

  /// Instance family. Valid values are <span pulumi-lang-nodejs="`t2`" pulumi-lang-dotnet="`T2`" pulumi-lang-go="`t2`" pulumi-lang-python="`t2`" pulumi-lang-yaml="`t2`" pulumi-lang-java="`t2`">`t2`</span>, <span pulumi-lang-nodejs="`t3`" pulumi-lang-dotnet="`T3`" pulumi-lang-go="`t3`" pulumi-lang-python="`t3`" pulumi-lang-yaml="`t3`" pulumi-lang-java="`t3`">`t3`</span>, <span pulumi-lang-nodejs="`t3a`" pulumi-lang-dotnet="`T3a`" pulumi-lang-go="`t3a`" pulumi-lang-python="`t3a`" pulumi-lang-yaml="`t3a`" pulumi-lang-java="`t3a`">`t3a`</span>, <span pulumi-lang-nodejs="`t4g`" pulumi-lang-dotnet="`T4g`" pulumi-lang-go="`t4g`" pulumi-lang-python="`t4g`" pulumi-lang-yaml="`t4g`" pulumi-lang-java="`t4g`">`t4g`</span>.
  final Input<String> instanceFamily;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<DefaultCreditSpecificationTimeouts>? timeouts;

  DefaultCreditSpecificationArgs({
    required this.cpuCredits,
    required this.instanceFamily,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCredits'] = cpuCredits;
    map['instanceFamily'] = instanceFamily;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          DefaultCreditSpecificationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DefaultCreditSpecificationArgs.fromMap(Map<String, dynamic> map) {
    return DefaultCreditSpecificationArgs(
      cpuCredits: Input.asInput<String>(map['cpuCredits']),
      instanceFamily: Input.asInput<String>(map['instanceFamily']),
      region: Input.asOptionalInput<String>(map['region']),
      timeouts: Input.asOptionalInput<DefaultCreditSpecificationTimeouts>(
          map['timeouts']),
    );
  }
}
