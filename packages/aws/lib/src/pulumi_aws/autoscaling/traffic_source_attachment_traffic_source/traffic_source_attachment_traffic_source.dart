// ignore_for_file: unused_element, unnecessary_cast

class TrafficSourceAttachmentTrafficSource {
  /// Identifies the traffic source. For Application Load Balancers, Gateway Load Balancers, Network Load Balancers, and VPC Lattice, this will be the Amazon Resource Name (ARN) for a target group in this account and Region. For Classic Load Balancers, this will be the name of the Classic Load Balancer in this account and Region.
  final String identifier;

  /// Provides additional context for the value of <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>.
  /// The following lists the valid values:
  /// <span pulumi-lang-nodejs="`elb`" pulumi-lang-dotnet="`Elb`" pulumi-lang-go="`elb`" pulumi-lang-python="`elb`" pulumi-lang-yaml="`elb`" pulumi-lang-java="`elb`">`elb`</span> if <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span> is the name of a Classic Load Balancer.
  /// <span pulumi-lang-nodejs="`elbv2`" pulumi-lang-dotnet="`Elbv2`" pulumi-lang-go="`elbv2`" pulumi-lang-python="`elbv2`" pulumi-lang-yaml="`elbv2`" pulumi-lang-java="`elbv2`">`elbv2`</span> if <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span> is the ARN of an Application Load Balancer, Gateway Load Balancer, or Network Load Balancer target group.
  /// `vpc-lattice` if <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span> is the ARN of a VPC Lattice target group.
  final String type;

  TrafficSourceAttachmentTrafficSource({
    required this.identifier,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    map['type'] = type;
    return map;
  }

  factory TrafficSourceAttachmentTrafficSource.fromMap(
      Map<String, dynamic> map) {
    return TrafficSourceAttachmentTrafficSource(
      identifier: map['identifier'] as String,
      type: map['type'] as String,
    );
  }
}
