import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_association_args.dart';

/// Creates a WAFv2 Web ACL Association.
///
/// > **NOTE on associating a WAFv2 Web ACL with a Cloudfront distribution:** Do not use this resource to associate a WAFv2 Web ACL with a Cloudfront Distribution. The [AWS API call backing this resource](https://docs.aws.amazon.com/waf/latest/APIReference/API_AssociateWebACL.html) notes that you should use the `web_acl_id` property on the `cloudfront_distribution` instead.
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
class WebAclAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The Amazon Resource Name (ARN) of the resource to associate with the web ACL. This must be an ARN of an Application Load Balancer, an Amazon API Gateway stage (REST only, HTTP is unsupported), an Amazon Cognito User Pool, an Amazon AppSync GraphQL API, an Amazon App Runner service, or an Amazon Verified Access instance.
  late final pulumi.Output<String> resourceArn;
  /// The Amazon Resource Name (ARN) of the Web ACL that you want to associate with the resource.
  late final pulumi.Output<String> webAclArn;

  /// Creates a new [WebAclAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAclAssociation]. {@macro pulumi_wafv2_web_acl_association_web_acl_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAclAssociation(
    String name, {
    WebAclAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/webAclAssociation:WebAclAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.webAclArn = registerOutput<String>('webAclArn');
  }
}
