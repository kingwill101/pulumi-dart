import 'package:pulumi/pulumi.dart' as pulumi;
import '../container_service_private_registry_access/container_service_private_registry_access.dart';
import '../container_service_public_domain_names/container_service_public_domain_names.dart';
import 'container_service_args.dart';

/// Manages a Lightsail container service. Use this resource to create and manage a scalable compute and networking platform for deploying, running, and managing containerized applications in Lightsail.
///
/// > **Note:** For more information about the AWS Regions in which you can create Amazon Lightsail container services, see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail).
///
/// > **NOTE:** You must create and validate an SSL/TLS certificate before you can use `public_domain_names` with your container service. For more information, see [Enabling and managing custom domains for your Amazon Lightsail container services](https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-creating-container-services-certificates).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Public Domain Names
///
///
///
/// ### Private Registry Access
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lightsail Container Service using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/containerService:ContainerService example container-service-1
/// ```
class ContainerService extends pulumi.CustomResource {
  /// ARN of the container service.
  late final pulumi.Output<String> arn;

  /// Availability Zone. Follows the format us-east-2a (case-sensitive).
  late final pulumi.Output<String> availabilityZone;

  /// Date and time when the container service was created.
  late final pulumi.Output<String> createdAt;

  /// Whether to disable the container service. Defaults to `false`.
  late final pulumi.Output<bool?> isDisabled;

  /// Name of the container service. Names must be of length 1 to 63, and be unique within each AWS Region in your Lightsail account.
  late final pulumi.Output<String> name;

  /// Power specification for the container service. The power specifies the amount of memory, the number of vCPUs, and the monthly price of each node of the container service. Possible values: `nano`, `micro`, `small`, `medium`, `large`, `xlarge`.
  late final pulumi.Output<String> power;

  /// Power ID of the container service.
  late final pulumi.Output<String> powerId;

  /// Principal ARN of the container service. The principal ARN can be used to create a trust relationship between your standard AWS account and your Lightsail container service.
  late final pulumi.Output<String> principalArn;

  /// Private domain name of the container service. The private domain name is accessible only by other resources within the default virtual private cloud (VPC) of your Lightsail account.
  late final pulumi.Output<String> privateDomainName;

  /// Configuration for the container service to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See below.
  late final pulumi.Output<ContainerServicePrivateRegistryAccess>
      privateRegistryAccess;

  /// Public domain names to use with the container service, such as example.com and www.example.com. You can specify up to four public domain names for a container service. The domain names that you specify are used when you create a deployment with a container configured as the public endpoint of your container service. If you don't specify public domain names, then you can use the default domain of the container service. See below.
  late final pulumi.Output<ContainerServicePublicDomainNames?>
      publicDomainNames;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Lightsail resource type of the container service (i.e., ContainerService).
  late final pulumi.Output<String> resourceType;

  /// Scale specification for the container service. The scale specifies the allocated compute nodes of the container service.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> scale;

  /// Current state of the container service.
  late final pulumi.Output<String> state;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Publicly accessible URL of the container service. If no public endpoint is specified in the currentDeployment, this URL returns a 404 response.
  late final pulumi.Output<String> url;

  ContainerService(
    String name, {
    ContainerServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/containerService:ContainerService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.createdAt = registerOutput<String>('createdAt');
    this.isDisabled = registerOutput<bool?>('isDisabled');
    this.name = registerOutput<String>('name');
    this.power = registerOutput<String>('power');
    this.powerId = registerOutput<String>('powerId');
    this.principalArn = registerOutput<String>('principalArn');
    this.privateDomainName = registerOutput<String>('privateDomainName');
    this.privateRegistryAccess =
        registerOutput<ContainerServicePrivateRegistryAccess>(
            'privateRegistryAccess');
    this.publicDomainNames =
        registerOutput<ContainerServicePublicDomainNames?>('publicDomainNames');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String>('resourceType');
    this.scale = registerOutput<int>('scale');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String>('url');
  }
}
