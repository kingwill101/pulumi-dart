// ignore_for_file: unused_element, unnecessary_cast

class RecordCidrRoutingPolicy {
  /// The CIDR collection ID. See the <span pulumi-lang-nodejs="`aws.route53.CidrCollection`" pulumi-lang-dotnet="`aws.route53.CidrCollection`" pulumi-lang-go="`route53.CidrCollection`" pulumi-lang-python="`route53.CidrCollection`" pulumi-lang-yaml="`aws.route53.CidrCollection`" pulumi-lang-java="`aws.route53.CidrCollection`">`aws.route53.CidrCollection`</span> resource for more details.
  final String collectionId;

  /// The CIDR collection location name. See the <span pulumi-lang-nodejs="`aws.route53.CidrLocation`" pulumi-lang-dotnet="`aws.route53.CidrLocation`" pulumi-lang-go="`route53.CidrLocation`" pulumi-lang-python="`route53.CidrLocation`" pulumi-lang-yaml="`aws.route53.CidrLocation`" pulumi-lang-java="`aws.route53.CidrLocation`">`aws.route53.CidrLocation`</span> resource for more details. A <span pulumi-lang-nodejs="`locationName`" pulumi-lang-dotnet="`LocationName`" pulumi-lang-go="`locationName`" pulumi-lang-python="`location_name`" pulumi-lang-yaml="`locationName`" pulumi-lang-java="`locationName`">`location_name`</span> with an asterisk `"*"` can be used to create a default CIDR record. <span pulumi-lang-nodejs="`collectionId`" pulumi-lang-dotnet="`CollectionId`" pulumi-lang-go="`collectionId`" pulumi-lang-python="`collection_id`" pulumi-lang-yaml="`collectionId`" pulumi-lang-java="`collectionId`">`collection_id`</span> is still required for default record.
  final String locationName;

  RecordCidrRoutingPolicy({
    required this.collectionId,
    required this.locationName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionId'] = collectionId;
    map['locationName'] = locationName;
    return map;
  }

  factory RecordCidrRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordCidrRoutingPolicy(
      collectionId: map['collectionId'] as String,
      locationName: map['locationName'] as String,
    );
  }
}
