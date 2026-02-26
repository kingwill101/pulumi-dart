import 'package:pulumi/pulumi.dart';
import 'web_acl_association_args2.dart';

/// Creates a WAFv2 Web ACL Association.
///
/// > **NOTE on associating a WAFv2 Web ACL with a Cloudfront distribution:** Do not use this resource to associate a WAFv2 Web ACL with a Cloudfront Distribution. The [AWS API call backing this resource](https://docs.aws.amazon.com/waf/latest/APIReference/API_AssociateWebACL.html) notes that you should use the <span pulumi-lang-nodejs="`webAclId`" pulumi-lang-dotnet="`WebAclId`" pulumi-lang-go="`webAclId`" pulumi-lang-python="`web_acl_id`" pulumi-lang-yaml="`webAclId`" pulumi-lang-java="`webAclId`">`web_acl_id`</span> property on the <span pulumi-lang-nodejs="`cloudfrontDistribution`" pulumi-lang-dotnet="`CloudfrontDistribution`" pulumi-lang-go="`cloudfrontDistribution`" pulumi-lang-python="`cloudfront_distribution`" pulumi-lang-yaml="`cloudfrontDistribution`" pulumi-lang-java="`cloudfrontDistribution`">`cloudfront_distribution`</span> instead.
///
/// [1]: https://docs.aws.amazon.com/waf/latest/APIReference/API_AssociateWebACL.html
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 Web ACL Association using `WEB_ACL_ARN,RESOURCE_ARN`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/webAclAssociation:WebAclAssociation example arn:aws:wafv2:...7ce849ea,arn:aws:apigateway:...ages/name
/// ```
class WebAclAssociation2 extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the resource to associate with the web ACL. This must be an ARN of an Application Load Balancer, an Amazon API Gateway stage (REST only, HTTP is unsupported), an Amazon Cognito User Pool, an Amazon AppSync GraphQL API, an Amazon App Runner service, or an Amazon Verified Access instance.
  late final Output<String> resourceArn;

  /// The Amazon Resource Name (ARN) of the Web ACL that you want to associate with the resource.
  late final Output<String> webAclArn;

  WebAclAssociation2(
    String name, {
    WebAclAssociationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/webAclAssociation:WebAclAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.webAclArn = registerOutput<String>('webAclArn');
  }
}
