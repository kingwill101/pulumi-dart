// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateCreditSpecification {
  /// The credit option for CPU usage.
  /// Can be <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span> or <span pulumi-lang-nodejs="`unlimited`" pulumi-lang-dotnet="`Unlimited`" pulumi-lang-go="`unlimited`" pulumi-lang-python="`unlimited`" pulumi-lang-yaml="`unlimited`" pulumi-lang-java="`unlimited`">`unlimited`</span>.
  /// T3 instances are launched as <span pulumi-lang-nodejs="`unlimited`" pulumi-lang-dotnet="`Unlimited`" pulumi-lang-go="`unlimited`" pulumi-lang-python="`unlimited`" pulumi-lang-yaml="`unlimited`" pulumi-lang-java="`unlimited`">`unlimited`</span> by default.
  /// T2 instances are launched as <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span> by default.
  final String? cpuCredits;

  LaunchTemplateCreditSpecification({
    this.cpuCredits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuCreditsValue = cpuCredits;
    if (cpuCreditsValue != null) {
      map['cpuCredits'] = cpuCreditsValue;
    }
    return map;
  }

  factory LaunchTemplateCreditSpecification.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateCreditSpecification(
      cpuCredits:
          map['cpuCredits'] == null ? null : map['cpuCredits'] as String,
    );
  }
}
