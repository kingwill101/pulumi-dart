import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_association_args.dart';
import 'web_acl_association_state.dart';

/// Creates a WAFv2 Web ACL Association.
///
/// &gt; **NOTE on associating a WAFv2 Web ACL with a Cloudfront distribution:** Do not use this resource to associate a WAFv2 Web ACL with a Cloudfront Distribution. The [AWS API call backing this resource](https://docs.aws.amazon.com/waf/latest/APIReference/API_AssociateWebACL.html) notes that you should use the `webAclId` property on the `cloudfrontDistribution` instead.
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
  /// ARN of the resource to associate with the web ACL. This must be an ARN of an Application Load Balancer, an Amazon API Gateway stage (REST only, HTTP is unsupported), an Amazon Cognito User Pool, an Amazon AppSync GraphQL API, an Amazon App Runner service, an AWS Amplify application, an Amazon Bedrock AgentCore Gateway, or an Amazon Verified Access instance.
  late final pulumi.Output<String> resourceArn;
  /// ARN of the Web ACL that you want to associate with the resource.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    webAclArn = registerOutput<String>('webAclArn');
  }

  /// Gets an existing [WebAclAssociation] resource's state with the given [name] and [id].
  static WebAclAssociation get(
    String name,
    pulumi.Input<String> id, {
    WebAclAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WebAclAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WebAclAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/webAclAssociation:WebAclAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    webAclArn = registerOutput<String>('webAclArn');
  }

  /// Creates a typed reference to an existing [WebAclAssociation] resource.
  WebAclAssociation.reference(String urn)
    : super(
        'aws:wafv2/webAclAssociation:WebAclAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    webAclArn = registerOutput<String>('webAclArn');
  }
}
