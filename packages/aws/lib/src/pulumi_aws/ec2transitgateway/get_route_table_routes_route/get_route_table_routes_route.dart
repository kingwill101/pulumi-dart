// ignore_for_file: unused_element, unnecessary_cast

class GetRouteTableRoutesRoute {
  /// The CIDR used for route destination matches.
  final String destinationCidrBlock;

  /// The ID of the prefix list used for destination matches.
  final String prefixListId;

  /// The current state of the route, can be <span pulumi-lang-nodejs="`active`" pulumi-lang-dotnet="`Active`" pulumi-lang-go="`active`" pulumi-lang-python="`active`" pulumi-lang-yaml="`active`" pulumi-lang-java="`active`">`active`</span>, <span pulumi-lang-nodejs="`deleted`" pulumi-lang-dotnet="`Deleted`" pulumi-lang-go="`deleted`" pulumi-lang-python="`deleted`" pulumi-lang-yaml="`deleted`" pulumi-lang-java="`deleted`">`deleted`</span>, <span pulumi-lang-nodejs="`pending`" pulumi-lang-dotnet="`Pending`" pulumi-lang-go="`pending`" pulumi-lang-python="`pending`" pulumi-lang-yaml="`pending`" pulumi-lang-java="`pending`">`pending`</span>, <span pulumi-lang-nodejs="`blackhole`" pulumi-lang-dotnet="`Blackhole`" pulumi-lang-go="`blackhole`" pulumi-lang-python="`blackhole`" pulumi-lang-yaml="`blackhole`" pulumi-lang-java="`blackhole`">`blackhole`</span>, <span pulumi-lang-nodejs="`deleting`" pulumi-lang-dotnet="`Deleting`" pulumi-lang-go="`deleting`" pulumi-lang-python="`deleting`" pulumi-lang-yaml="`deleting`" pulumi-lang-java="`deleting`">`deleting`</span>.
  final String state;

  /// The id of the transit gateway route table announcement, most of the time it is an empty string.
  final String transitGatewayRouteTableAnnouncementId;

  /// The type of the route, can be <span pulumi-lang-nodejs="`propagated`" pulumi-lang-dotnet="`Propagated`" pulumi-lang-go="`propagated`" pulumi-lang-python="`propagated`" pulumi-lang-yaml="`propagated`" pulumi-lang-java="`propagated`">`propagated`</span> or <span pulumi-lang-nodejs="`static`" pulumi-lang-dotnet="`Static`" pulumi-lang-go="`static`" pulumi-lang-python="`static`" pulumi-lang-yaml="`static`" pulumi-lang-java="`static`">`static`</span>.
  final String type;

  GetRouteTableRoutesRoute({
    required this.destinationCidrBlock,
    required this.prefixListId,
    required this.state,
    required this.transitGatewayRouteTableAnnouncementId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationCidrBlock'] = destinationCidrBlock;
    map['prefixListId'] = prefixListId;
    map['state'] = state;
    map['transitGatewayRouteTableAnnouncementId'] =
        transitGatewayRouteTableAnnouncementId;
    map['type'] = type;
    return map;
  }

  factory GetRouteTableRoutesRoute.fromMap(Map<String, dynamic> map) {
    return GetRouteTableRoutesRoute(
      destinationCidrBlock: map['destinationCidrBlock'] as String,
      prefixListId: map['prefixListId'] as String,
      state: map['state'] as String,
      transitGatewayRouteTableAnnouncementId:
          map['transitGatewayRouteTableAnnouncementId'] as String,
      type: map['type'] as String,
    );
  }
}
