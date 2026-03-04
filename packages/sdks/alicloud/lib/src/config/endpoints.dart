// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Endpoints {
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom acr endpoints.
  final pulumi.Input<String>? acr;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Actiontrail endpoints.
  final pulumi.Input<String>? actiontrail;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom AnalyticDB endpoints.
  final pulumi.Input<String>? adb;
  final pulumi.Input<String>? aiworkspace;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alb endpoints.
  final pulumi.Input<String>? alb;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alidfs endpoints.
  final pulumi.Input<String>? alidfs;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alidns endpoints.
  final pulumi.Input<String>? alidns;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ALIKAFKA endpoints.
  final pulumi.Input<String>? alikafka;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom onsproxy endpoints.
  final pulumi.Input<String>? amqp;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ddosbasic endpoints.
  final pulumi.Input<String>? antiddosPublic;
  final pulumi.Input<String>? apig;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Api Gateway endpoints.
  final pulumi.Input<String>? apigateway;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom arms endpoints.
  final pulumi.Input<String>? arms;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom bastionhost endpoints.
  final pulumi.Input<String>? bastionhost;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom beebot endpoints.
  final pulumi.Input<String>? beebot;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom bpstudio endpoints.
  final pulumi.Input<String>? bpstudio;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom brain_industrial endpoints.
  final pulumi.Input<String>? brainIndustrial;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom BSSOPENAPI endpoints.
  final pulumi.Input<String>? bssopenapi;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom CAS endpoints.
  final pulumi.Input<String>? cas;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cassandra endpoints.
  final pulumi.Input<String>? cassandra;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cbn endpoints.
  final pulumi.Input<String>? cbn;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cbs endpoints.
  final pulumi.Input<String>? cbs;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cddc endpoints.
  final pulumi.Input<String>? cddc;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom CDN endpoints.
  final pulumi.Input<String>? cdn;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cds endpoints.
  final pulumi.Input<String>? cds;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom beebot endpoints.
  final pulumi.Input<String>? chatbot;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom clickhouse endpoints.
  final pulumi.Input<String>? clickhouse;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Api Gateway endpoints.
  final pulumi.Input<String>? cloudapi;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudauth endpoints.
  final pulumi.Input<String>? cloudauth;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudfirewall endpoints.
  final pulumi.Input<String>? cloudfirewall;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudfw endpoints.
  final pulumi.Input<String>? cloudfw;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudphone endpoints.
  final pulumi.Input<String>? cloudphone;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudsso endpoints.
  final pulumi.Input<String>? cloudsso;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Cloud Monitor endpoints.
  final pulumi.Input<String>? cms;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom computenest endpoints.
  final pulumi.Input<String>? computenest;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom config endpoints.
  final pulumi.Input<String>? config;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Container Registry endpoints.
  final pulumi.Input<String>? cr;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Container Service endpoints.
  final pulumi.Input<String>? cs;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom das endpoints.
  final pulumi.Input<String>? das;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Datahub endpoints.
  final pulumi.Input<String>? datahub;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dataworkspublic endpoints.
  final pulumi.Input<String>? dataworksPublic;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dataworkspublic endpoints.
  final pulumi.Input<String>? dataworkspublic;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dbfs endpoints.
  final pulumi.Input<String>? dbfs;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cbs endpoints.
  final pulumi.Input<String>? dbs;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dcdn endpoints.
  final pulumi.Input<String>? dcdn;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ddosbasic endpoints.
  final pulumi.Input<String>? ddosbasic;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DDOSBGP endpoints.
  final pulumi.Input<String>? ddosbgp;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DDOSCOO endpoints.
  final pulumi.Input<String>? ddoscoo;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MongoDB endpoints.
  final pulumi.Input<String>? dds;
  final pulumi.Input<String>? devopsRdc;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom devopsrdc endpoints.
  final pulumi.Input<String>? devopsrdc;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alidfs endpoints.
  final pulumi.Input<String>? dfs;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dg endpoints.
  final pulumi.Input<String>? dg;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dm endpoints.
  final pulumi.Input<String>? dm;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dms_enterprise endpoints.
  final pulumi.Input<String>? dmsEnterprise;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dmsenterprise endpoints.
  final pulumi.Input<String>? dmsenterprise;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DNS endpoints.
  final pulumi.Input<String>? dns;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DRDS endpoints.
  final pulumi.Input<String>? drds;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dts endpoints.
  final pulumi.Input<String>? dts;
  final pulumi.Input<String>? dysms;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dysmsapi endpoints.
  final pulumi.Input<String>? dysmsapi;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eais endpoints.
  final pulumi.Input<String>? eais;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ebs endpoints.
  final pulumi.Input<String>? ebs;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gwsecd endpoints.
  final pulumi.Input<String>? ecd;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eci endpoints.
  final pulumi.Input<String>? eci;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ECS endpoints.
  final pulumi.Input<String>? ecs;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edas endpoints.
  final pulumi.Input<String>? edas;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edasschedulerx endpoints.
  final pulumi.Input<String>? edasschedulerx;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edsuser endpoints.
  final pulumi.Input<String>? edsUser;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edsuser endpoints.
  final pulumi.Input<String>? edsuser;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eflo endpoints.
  final pulumi.Input<String>? eflo;
  final pulumi.Input<String>? efloCnp;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom efloctrl endpoints.
  final pulumi.Input<String>? efloController;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ehpc endpoints.
  final pulumi.Input<String>? ehpc;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ehs endpoints.
  final pulumi.Input<String>? ehs;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eipanycast endpoints.
  final pulumi.Input<String>? eipanycast;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Elasticsearch endpoints.
  final pulumi.Input<String>? elasticsearch;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom EMR endpoints.
  final pulumi.Input<String>? emr;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ens endpoints.
  final pulumi.Input<String>? ens;
  final pulumi.Input<String>? esa;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Autoscaling endpoints.
  final pulumi.Input<String>? ess;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eventbridge_share endpoints.
  final pulumi.Input<String>? eventbridge;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Function Computing endpoints.
  final pulumi.Input<String>? fc;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Function Computing endpoints.
  final pulumi.Input<String>? fcOpen;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom fnf endpoints.
  final pulumi.Input<String>? fnf;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ga endpoints.
  final pulumi.Input<String>? ga;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gaplus endpoints.
  final pulumi.Input<String>? gaplus;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gds endpoints.
  final pulumi.Input<String>? gdb;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gds endpoints.
  final pulumi.Input<String>? gds;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom GPDB endpoints.
  final pulumi.Input<String>? gpdb;
  final pulumi.Input<String>? gwlb;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gwsecd endpoints.
  final pulumi.Input<String>? gwsecd;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom hbr endpoints.
  final pulumi.Input<String>? hbr;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom hcs_sgw endpoints.
  final pulumi.Input<String>? hcsSgw;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom hitsdb endpoints.
  final pulumi.Input<String>? hitsdb;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom imm endpoints.
  final pulumi.Input<String>? imm;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom imp endpoints.
  final pulumi.Input<String>? imp;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ims endpoints.
  final pulumi.Input<String>? ims;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom iot endpoints.
  final pulumi.Input<String>? iot;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom KMS endpoints.
  final pulumi.Input<String>? kms;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom R-KVStore endpoints.
  final pulumi.Input<String>? kvstore;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Location Service endpoints.
  final pulumi.Input<String>? location;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Log Service endpoints.
  final pulumi.Input<String>? log;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Market Place endpoints.
  final pulumi.Input<String>? market;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MaxCompute endpoints.
  final pulumi.Input<String>? maxcompute;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom mhub endpoints.
  final pulumi.Input<String>? mhub;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MNS endpoints.
  final pulumi.Input<String>? mns;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MNS endpoints.
  final pulumi.Input<String>? mnsOpen;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom mscopensubscription endpoints.
  final pulumi.Input<String>? mscopensubscription;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom mse endpoints.
  final pulumi.Input<String>? mse;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom NAS endpoints.
  final pulumi.Input<String>? nas;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom nlb endpoints.
  final pulumi.Input<String>? nlb;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom oceanbase endpoints.
  final pulumi.Input<String>? oceanbase;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom oceanbase endpoints.
  final pulumi.Input<String>? oceanbasepro;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ONS endpoints.
  final pulumi.Input<String>? ons;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom onsproxy endpoints.
  final pulumi.Input<String>? onsproxy;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom oos endpoints.
  final pulumi.Input<String>? oos;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom opensearch endpoints.
  final pulumi.Input<String>? opensearch;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom OSS endpoints.
  final pulumi.Input<String>? oss;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Table Store endpoints.
  final pulumi.Input<String>? ots;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom PolarDB endpoints.
  final pulumi.Input<String>? polardb;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DRDS endpoints.
  final pulumi.Input<String>? polardbx;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom privatelink endpoints.
  final pulumi.Input<String>? privatelink;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Private Zone endpoints.
  final pulumi.Input<String>? pvtz;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom quickbi endpoints.
  final pulumi.Input<String>? quickbi;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom quickbi endpoints.
  final pulumi.Input<String>? quickbiPublic;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom quotas endpoints.
  final pulumi.Input<String>? quotas;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom r_kvstore endpoints.
  final pulumi.Input<String>? rKvstore;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom RAM endpoints.
  final pulumi.Input<String>? ram;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom RDS endpoints.
  final pulumi.Input<String>? rds;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom redisa endpoints.
  final pulumi.Input<String>? redisa;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom resourcemanager endpoints.
  final pulumi.Input<String>? resourcemanager;
  final pulumi.Input<String>? resourcesharing;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom resourcesharing endpoints.
  final pulumi.Input<String>? ressharing;
  final pulumi.Input<String>? rocketmq;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ros endpoints.
  final pulumi.Input<String>? ros;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom serverless endpoints.
  final pulumi.Input<String>? sae;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom sas endpoints.
  final pulumi.Input<String>? sas;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom scdn endpoints.
  final pulumi.Input<String>? scdn;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edasschedulerx endpoints.
  final pulumi.Input<String>? schedulerx2;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom sddp endpoints.
  final pulumi.Input<String>? sddp;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom selectdb endpoints.
  final pulumi.Input<String>? selectdb;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom serverless endpoints.
  final pulumi.Input<String>? serverless;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom srvcatalog endpoints.
  final pulumi.Input<String>? servicecatalog;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom servicemesh endpoints.
  final pulumi.Input<String>? servicemesh;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom sgw endpoints.
  final pulumi.Input<String>? sgw;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom SLB endpoints.
  final pulumi.Input<String>? slb;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom smartag endpoints.
  final pulumi.Input<String>? smartag;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom srvcatalog endpoints.
  final pulumi.Input<String>? srvcatalog;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom STS endpoints.
  final pulumi.Input<String>? sts;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom swas endpoints.
  final pulumi.Input<String>? swas;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom swas endpoints.
  final pulumi.Input<String>? swasOpen;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom tag endpoints.
  final pulumi.Input<String>? tag;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom vod endpoints.
  final pulumi.Input<String>? vod;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom VPC and VPN endpoints.
  final pulumi.Input<String>? vpc;
  final pulumi.Input<String>? vpcipam;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom vpcpeer endpoints.
  final pulumi.Input<String>? vpcpeer;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom vs endpoints.
  final pulumi.Input<String>? vs;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom waf endpoints.
  final pulumi.Input<String>? waf;

  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom waf_openapi endpoints.
  final pulumi.Input<String>? wafOpenapi;

  /// Creates a new [Endpoints].
  /// [acr] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom acr endpoints.
  /// [actiontrail] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Actiontrail endpoints.
  /// [adb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom AnalyticDB endpoints.
  /// [aiworkspace] Optional.
  /// [alb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alb endpoints.
  /// [alidfs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alidfs endpoints.
  /// [alidns] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alidns endpoints.
  /// [alikafka] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ALIKAFKA endpoints.
  /// [amqp] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom onsproxy endpoints.
  /// [antiddosPublic] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ddosbasic endpoints.
  /// [apig] Optional.
  /// [apigateway] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Api Gateway endpoints.
  /// [arms] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom arms endpoints.
  /// [bastionhost] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom bastionhost endpoints.
  /// [beebot] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom beebot endpoints.
  /// [bpstudio] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom bpstudio endpoints.
  /// [brainIndustrial] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom brain_industrial endpoints.
  /// [bssopenapi] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom BSSOPENAPI endpoints.
  /// [cas] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom CAS endpoints.
  /// [cassandra] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cassandra endpoints.
  /// [cbn] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cbn endpoints.
  /// [cbs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cbs endpoints.
  /// [cddc] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cddc endpoints.
  /// [cdn] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom CDN endpoints.
  /// [cds] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cds endpoints.
  /// [chatbot] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom beebot endpoints.
  /// [clickhouse] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom clickhouse endpoints.
  /// [cloudapi] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Api Gateway endpoints.
  /// [cloudauth] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudauth endpoints.
  /// [cloudfirewall] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudfirewall endpoints.
  /// [cloudfw] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudfw endpoints.
  /// [cloudphone] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudphone endpoints.
  /// [cloudsso] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudsso endpoints.
  /// [cms] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Cloud Monitor endpoints.
  /// [computenest] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom computenest endpoints.
  /// [config] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom config endpoints.
  /// [cr] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Container Registry endpoints.
  /// [cs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Container Service endpoints.
  /// [das] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom das endpoints.
  /// [datahub] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Datahub endpoints.
  /// [dataworksPublic] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dataworkspublic endpoints.
  /// [dataworkspublic] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dataworkspublic endpoints.
  /// [dbfs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dbfs endpoints.
  /// [dbs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cbs endpoints.
  /// [dcdn] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dcdn endpoints.
  /// [ddosbasic] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ddosbasic endpoints.
  /// [ddosbgp] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DDOSBGP endpoints.
  /// [ddoscoo] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DDOSCOO endpoints.
  /// [dds] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MongoDB endpoints.
  /// [devopsRdc] Optional.
  /// [devopsrdc] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom devopsrdc endpoints.
  /// [dfs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alidfs endpoints.
  /// [dg] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dg endpoints.
  /// [dm] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dm endpoints.
  /// [dmsEnterprise] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dms_enterprise endpoints.
  /// [dmsenterprise] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dmsenterprise endpoints.
  /// [dns] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DNS endpoints.
  /// [drds] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DRDS endpoints.
  /// [dts] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dts endpoints.
  /// [dysms] Optional.
  /// [dysmsapi] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dysmsapi endpoints.
  /// [eais] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eais endpoints.
  /// [ebs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ebs endpoints.
  /// [ecd] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gwsecd endpoints.
  /// [eci] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eci endpoints.
  /// [ecs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ECS endpoints.
  /// [edas] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edas endpoints.
  /// [edasschedulerx] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edasschedulerx endpoints.
  /// [edsUser] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edsuser endpoints.
  /// [edsuser] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edsuser endpoints.
  /// [eflo] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eflo endpoints.
  /// [efloCnp] Optional.
  /// [efloController] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom efloctrl endpoints.
  /// [ehpc] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ehpc endpoints.
  /// [ehs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ehs endpoints.
  /// [eipanycast] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eipanycast endpoints.
  /// [elasticsearch] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Elasticsearch endpoints.
  /// [emr] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom EMR endpoints.
  /// [ens] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ens endpoints.
  /// [esa] Optional.
  /// [ess] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Autoscaling endpoints.
  /// [eventbridge] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eventbridge_share endpoints.
  /// [fc] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Function Computing endpoints.
  /// [fcOpen] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Function Computing endpoints.
  /// [fnf] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom fnf endpoints.
  /// [ga] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ga endpoints.
  /// [gaplus] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gaplus endpoints.
  /// [gdb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gds endpoints.
  /// [gds] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gds endpoints.
  /// [gpdb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom GPDB endpoints.
  /// [gwlb] Optional.
  /// [gwsecd] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gwsecd endpoints.
  /// [hbr] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom hbr endpoints.
  /// [hcsSgw] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom hcs_sgw endpoints.
  /// [hitsdb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom hitsdb endpoints.
  /// [imm] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom imm endpoints.
  /// [imp] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom imp endpoints.
  /// [ims] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ims endpoints.
  /// [iot] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom iot endpoints.
  /// [kms] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom KMS endpoints.
  /// [kvstore] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom R-KVStore endpoints.
  /// [location] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Location Service endpoints.
  /// [log] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Log Service endpoints.
  /// [market] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Market Place endpoints.
  /// [maxcompute] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MaxCompute endpoints.
  /// [mhub] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom mhub endpoints.
  /// [mns] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MNS endpoints.
  /// [mnsOpen] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MNS endpoints.
  /// [mscopensubscription] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom mscopensubscription endpoints.
  /// [mse] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom mse endpoints.
  /// [nas] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom NAS endpoints.
  /// [nlb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom nlb endpoints.
  /// [oceanbase] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom oceanbase endpoints.
  /// [oceanbasepro] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom oceanbase endpoints.
  /// [ons] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ONS endpoints.
  /// [onsproxy] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom onsproxy endpoints.
  /// [oos] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom oos endpoints.
  /// [opensearch] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom opensearch endpoints.
  /// [oss] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom OSS endpoints.
  /// [ots] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Table Store endpoints.
  /// [polardb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom PolarDB endpoints.
  /// [polardbx] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DRDS endpoints.
  /// [privatelink] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom privatelink endpoints.
  /// [pvtz] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Private Zone endpoints.
  /// [quickbi] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom quickbi endpoints.
  /// [quickbiPublic] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom quickbi endpoints.
  /// [quotas] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom quotas endpoints.
  /// [rKvstore] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom r_kvstore endpoints.
  /// [ram] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom RAM endpoints.
  /// [rds] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom RDS endpoints.
  /// [redisa] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom redisa endpoints.
  /// [resourcemanager] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom resourcemanager endpoints.
  /// [resourcesharing] Optional.
  /// [ressharing] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom resourcesharing endpoints.
  /// [rocketmq] Optional.
  /// [ros] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ros endpoints.
  /// [sae] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom serverless endpoints.
  /// [sas] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom sas endpoints.
  /// [scdn] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom scdn endpoints.
  /// [schedulerx2] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edasschedulerx endpoints.
  /// [sddp] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom sddp endpoints.
  /// [selectdb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom selectdb endpoints.
  /// [serverless] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom serverless endpoints.
  /// [servicecatalog] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom srvcatalog endpoints.
  /// [servicemesh] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom servicemesh endpoints.
  /// [sgw] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom sgw endpoints.
  /// [slb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom SLB endpoints.
  /// [smartag] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom smartag endpoints.
  /// [srvcatalog] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom srvcatalog endpoints.
  /// [sts] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom STS endpoints.
  /// [swas] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom swas endpoints.
  /// [swasOpen] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom swas endpoints.
  /// [tag] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom tag endpoints.
  /// [vod] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom vod endpoints.
  /// [vpc] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom VPC and VPN endpoints.
  /// [vpcipam] Optional.
  /// [vpcpeer] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom vpcpeer endpoints.
  /// [vs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom vs endpoints.
  /// [waf] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom waf endpoints.
  /// [wafOpenapi] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom waf_openapi endpoints.
  Endpoints({
    this.acr,
    this.actiontrail,
    this.adb,
    this.aiworkspace,
    this.alb,
    this.alidfs,
    this.alidns,
    this.alikafka,
    this.amqp,
    this.antiddosPublic,
    this.apig,
    this.apigateway,
    this.arms,
    this.bastionhost,
    this.beebot,
    this.bpstudio,
    this.brainIndustrial,
    this.bssopenapi,
    this.cas,
    this.cassandra,
    this.cbn,
    this.cbs,
    this.cddc,
    this.cdn,
    this.cds,
    this.chatbot,
    this.clickhouse,
    this.cloudapi,
    this.cloudauth,
    this.cloudfirewall,
    this.cloudfw,
    this.cloudphone,
    this.cloudsso,
    this.cms,
    this.computenest,
    this.config,
    this.cr,
    this.cs,
    this.das,
    this.datahub,
    this.dataworksPublic,
    this.dataworkspublic,
    this.dbfs,
    this.dbs,
    this.dcdn,
    this.ddosbasic,
    this.ddosbgp,
    this.ddoscoo,
    this.dds,
    this.devopsRdc,
    this.devopsrdc,
    this.dfs,
    this.dg,
    this.dm,
    this.dmsEnterprise,
    this.dmsenterprise,
    this.dns,
    this.drds,
    this.dts,
    this.dysms,
    this.dysmsapi,
    this.eais,
    this.ebs,
    this.ecd,
    this.eci,
    this.ecs,
    this.edas,
    this.edasschedulerx,
    this.edsUser,
    this.edsuser,
    this.eflo,
    this.efloCnp,
    this.efloController,
    this.ehpc,
    this.ehs,
    this.eipanycast,
    this.elasticsearch,
    this.emr,
    this.ens,
    this.esa,
    this.ess,
    this.eventbridge,
    this.fc,
    this.fcOpen,
    this.fnf,
    this.ga,
    this.gaplus,
    this.gdb,
    this.gds,
    this.gpdb,
    this.gwlb,
    this.gwsecd,
    this.hbr,
    this.hcsSgw,
    this.hitsdb,
    this.imm,
    this.imp,
    this.ims,
    this.iot,
    this.kms,
    this.kvstore,
    this.location,
    this.log,
    this.market,
    this.maxcompute,
    this.mhub,
    this.mns,
    this.mnsOpen,
    this.mscopensubscription,
    this.mse,
    this.nas,
    this.nlb,
    this.oceanbase,
    this.oceanbasepro,
    this.ons,
    this.onsproxy,
    this.oos,
    this.opensearch,
    this.oss,
    this.ots,
    this.polardb,
    this.polardbx,
    this.privatelink,
    this.pvtz,
    this.quickbi,
    this.quickbiPublic,
    this.quotas,
    this.rKvstore,
    this.ram,
    this.rds,
    this.redisa,
    this.resourcemanager,
    this.resourcesharing,
    this.ressharing,
    this.rocketmq,
    this.ros,
    this.sae,
    this.sas,
    this.scdn,
    this.schedulerx2,
    this.sddp,
    this.selectdb,
    this.serverless,
    this.servicecatalog,
    this.servicemesh,
    this.sgw,
    this.slb,
    this.smartag,
    this.srvcatalog,
    this.sts,
    this.swas,
    this.swasOpen,
    this.tag,
    this.vod,
    this.vpc,
    this.vpcipam,
    this.vpcpeer,
    this.vs,
    this.waf,
    this.wafOpenapi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acr': ?acr,
      'actiontrail': ?actiontrail,
      'adb': ?adb,
      'aiworkspace': ?aiworkspace,
      'alb': ?alb,
      'alidfs': ?alidfs,
      'alidns': ?alidns,
      'alikafka': ?alikafka,
      'amqp': ?amqp,
      'antiddosPublic': ?antiddosPublic,
      'apig': ?apig,
      'apigateway': ?apigateway,
      'arms': ?arms,
      'bastionhost': ?bastionhost,
      'beebot': ?beebot,
      'bpstudio': ?bpstudio,
      'brainIndustrial': ?brainIndustrial,
      'bssopenapi': ?bssopenapi,
      'cas': ?cas,
      'cassandra': ?cassandra,
      'cbn': ?cbn,
      'cbs': ?cbs,
      'cddc': ?cddc,
      'cdn': ?cdn,
      'cds': ?cds,
      'chatbot': ?chatbot,
      'clickhouse': ?clickhouse,
      'cloudapi': ?cloudapi,
      'cloudauth': ?cloudauth,
      'cloudfirewall': ?cloudfirewall,
      'cloudfw': ?cloudfw,
      'cloudphone': ?cloudphone,
      'cloudsso': ?cloudsso,
      'cms': ?cms,
      'computenest': ?computenest,
      'config': ?config,
      'cr': ?cr,
      'cs': ?cs,
      'das': ?das,
      'datahub': ?datahub,
      'dataworksPublic': ?dataworksPublic,
      'dataworkspublic': ?dataworkspublic,
      'dbfs': ?dbfs,
      'dbs': ?dbs,
      'dcdn': ?dcdn,
      'ddosbasic': ?ddosbasic,
      'ddosbgp': ?ddosbgp,
      'ddoscoo': ?ddoscoo,
      'dds': ?dds,
      'devopsRdc': ?devopsRdc,
      'devopsrdc': ?devopsrdc,
      'dfs': ?dfs,
      'dg': ?dg,
      'dm': ?dm,
      'dmsEnterprise': ?dmsEnterprise,
      'dmsenterprise': ?dmsenterprise,
      'dns': ?dns,
      'drds': ?drds,
      'dts': ?dts,
      'dysms': ?dysms,
      'dysmsapi': ?dysmsapi,
      'eais': ?eais,
      'ebs': ?ebs,
      'ecd': ?ecd,
      'eci': ?eci,
      'ecs': ?ecs,
      'edas': ?edas,
      'edasschedulerx': ?edasschedulerx,
      'edsUser': ?edsUser,
      'edsuser': ?edsuser,
      'eflo': ?eflo,
      'efloCnp': ?efloCnp,
      'efloController': ?efloController,
      'ehpc': ?ehpc,
      'ehs': ?ehs,
      'eipanycast': ?eipanycast,
      'elasticsearch': ?elasticsearch,
      'emr': ?emr,
      'ens': ?ens,
      'esa': ?esa,
      'ess': ?ess,
      'eventbridge': ?eventbridge,
      'fc': ?fc,
      'fcOpen': ?fcOpen,
      'fnf': ?fnf,
      'ga': ?ga,
      'gaplus': ?gaplus,
      'gdb': ?gdb,
      'gds': ?gds,
      'gpdb': ?gpdb,
      'gwlb': ?gwlb,
      'gwsecd': ?gwsecd,
      'hbr': ?hbr,
      'hcsSgw': ?hcsSgw,
      'hitsdb': ?hitsdb,
      'imm': ?imm,
      'imp': ?imp,
      'ims': ?ims,
      'iot': ?iot,
      'kms': ?kms,
      'kvstore': ?kvstore,
      'location': ?location,
      'log': ?log,
      'market': ?market,
      'maxcompute': ?maxcompute,
      'mhub': ?mhub,
      'mns': ?mns,
      'mnsOpen': ?mnsOpen,
      'mscopensubscription': ?mscopensubscription,
      'mse': ?mse,
      'nas': ?nas,
      'nlb': ?nlb,
      'oceanbase': ?oceanbase,
      'oceanbasepro': ?oceanbasepro,
      'ons': ?ons,
      'onsproxy': ?onsproxy,
      'oos': ?oos,
      'opensearch': ?opensearch,
      'oss': ?oss,
      'ots': ?ots,
      'polardb': ?polardb,
      'polardbx': ?polardbx,
      'privatelink': ?privatelink,
      'pvtz': ?pvtz,
      'quickbi': ?quickbi,
      'quickbiPublic': ?quickbiPublic,
      'quotas': ?quotas,
      'rKvstore': ?rKvstore,
      'ram': ?ram,
      'rds': ?rds,
      'redisa': ?redisa,
      'resourcemanager': ?resourcemanager,
      'resourcesharing': ?resourcesharing,
      'ressharing': ?ressharing,
      'rocketmq': ?rocketmq,
      'ros': ?ros,
      'sae': ?sae,
      'sas': ?sas,
      'scdn': ?scdn,
      'schedulerx2': ?schedulerx2,
      'sddp': ?sddp,
      'selectdb': ?selectdb,
      'serverless': ?serverless,
      'servicecatalog': ?servicecatalog,
      'servicemesh': ?servicemesh,
      'sgw': ?sgw,
      'slb': ?slb,
      'smartag': ?smartag,
      'srvcatalog': ?srvcatalog,
      'sts': ?sts,
      'swas': ?swas,
      'swasOpen': ?swasOpen,
      'tag': ?tag,
      'vod': ?vod,
      'vpc': ?vpc,
      'vpcipam': ?vpcipam,
      'vpcpeer': ?vpcpeer,
      'vs': ?vs,
      'waf': ?waf,
      'wafOpenapi': ?wafOpenapi,
    };
  }

  factory Endpoints.fromMap(Map<String, dynamic> map) {
    return Endpoints(
      acr: (() {
        final guardedValue = map['acr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      actiontrail: (() {
        final guardedValue = map['actiontrail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      adb: (() {
        final guardedValue = map['adb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      aiworkspace: (() {
        final guardedValue = map['aiworkspace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alb: (() {
        final guardedValue = map['alb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alidfs: (() {
        final guardedValue = map['alidfs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alidns: (() {
        final guardedValue = map['alidns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alikafka: (() {
        final guardedValue = map['alikafka'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      amqp: (() {
        final guardedValue = map['amqp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      antiddosPublic: (() {
        final guardedValue = map['antiddosPublic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apig: (() {
        final guardedValue = map['apig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apigateway: (() {
        final guardedValue = map['apigateway'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arms: (() {
        final guardedValue = map['arms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bastionhost: (() {
        final guardedValue = map['bastionhost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      beebot: (() {
        final guardedValue = map['beebot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bpstudio: (() {
        final guardedValue = map['bpstudio'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      brainIndustrial: (() {
        final guardedValue = map['brainIndustrial'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bssopenapi: (() {
        final guardedValue = map['bssopenapi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cas: (() {
        final guardedValue = map['cas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cassandra: (() {
        final guardedValue = map['cassandra'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cbn: (() {
        final guardedValue = map['cbn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cbs: (() {
        final guardedValue = map['cbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cddc: (() {
        final guardedValue = map['cddc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cdn: (() {
        final guardedValue = map['cdn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cds: (() {
        final guardedValue = map['cds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      chatbot: (() {
        final guardedValue = map['chatbot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clickhouse: (() {
        final guardedValue = map['clickhouse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudapi: (() {
        final guardedValue = map['cloudapi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudauth: (() {
        final guardedValue = map['cloudauth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudfirewall: (() {
        final guardedValue = map['cloudfirewall'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudfw: (() {
        final guardedValue = map['cloudfw'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudphone: (() {
        final guardedValue = map['cloudphone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudsso: (() {
        final guardedValue = map['cloudsso'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cms: (() {
        final guardedValue = map['cms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computenest: (() {
        final guardedValue = map['computenest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      config: (() {
        final guardedValue = map['config'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cr: (() {
        final guardedValue = map['cr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cs: (() {
        final guardedValue = map['cs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      das: (() {
        final guardedValue = map['das'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      datahub: (() {
        final guardedValue = map['datahub'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataworksPublic: (() {
        final guardedValue = map['dataworksPublic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataworkspublic: (() {
        final guardedValue = map['dataworkspublic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbfs: (() {
        final guardedValue = map['dbfs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbs: (() {
        final guardedValue = map['dbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dcdn: (() {
        final guardedValue = map['dcdn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ddosbasic: (() {
        final guardedValue = map['ddosbasic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ddosbgp: (() {
        final guardedValue = map['ddosbgp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ddoscoo: (() {
        final guardedValue = map['ddoscoo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dds: (() {
        final guardedValue = map['dds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      devopsRdc: (() {
        final guardedValue = map['devopsRdc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      devopsrdc: (() {
        final guardedValue = map['devopsrdc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dfs: (() {
        final guardedValue = map['dfs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dg: (() {
        final guardedValue = map['dg'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dm: (() {
        final guardedValue = map['dm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dmsEnterprise: (() {
        final guardedValue = map['dmsEnterprise'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dmsenterprise: (() {
        final guardedValue = map['dmsenterprise'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dns: (() {
        final guardedValue = map['dns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      drds: (() {
        final guardedValue = map['drds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dts: (() {
        final guardedValue = map['dts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dysms: (() {
        final guardedValue = map['dysms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dysmsapi: (() {
        final guardedValue = map['dysmsapi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eais: (() {
        final guardedValue = map['eais'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ebs: (() {
        final guardedValue = map['ebs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ecd: (() {
        final guardedValue = map['ecd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eci: (() {
        final guardedValue = map['eci'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ecs: (() {
        final guardedValue = map['ecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      edas: (() {
        final guardedValue = map['edas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      edasschedulerx: (() {
        final guardedValue = map['edasschedulerx'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      edsUser: (() {
        final guardedValue = map['edsUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      edsuser: (() {
        final guardedValue = map['edsuser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eflo: (() {
        final guardedValue = map['eflo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      efloCnp: (() {
        final guardedValue = map['efloCnp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      efloController: (() {
        final guardedValue = map['efloController'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ehpc: (() {
        final guardedValue = map['ehpc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ehs: (() {
        final guardedValue = map['ehs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eipanycast: (() {
        final guardedValue = map['eipanycast'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      elasticsearch: (() {
        final guardedValue = map['elasticsearch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      emr: (() {
        final guardedValue = map['emr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ens: (() {
        final guardedValue = map['ens'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      esa: (() {
        final guardedValue = map['esa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ess: (() {
        final guardedValue = map['ess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventbridge: (() {
        final guardedValue = map['eventbridge'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fc: (() {
        final guardedValue = map['fc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fcOpen: (() {
        final guardedValue = map['fcOpen'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fnf: (() {
        final guardedValue = map['fnf'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ga: (() {
        final guardedValue = map['ga'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gaplus: (() {
        final guardedValue = map['gaplus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gdb: (() {
        final guardedValue = map['gdb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gds: (() {
        final guardedValue = map['gds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gpdb: (() {
        final guardedValue = map['gpdb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gwlb: (() {
        final guardedValue = map['gwlb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gwsecd: (() {
        final guardedValue = map['gwsecd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hbr: (() {
        final guardedValue = map['hbr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hcsSgw: (() {
        final guardedValue = map['hcsSgw'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hitsdb: (() {
        final guardedValue = map['hitsdb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imm: (() {
        final guardedValue = map['imm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imp: (() {
        final guardedValue = map['imp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ims: (() {
        final guardedValue = map['ims'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iot: (() {
        final guardedValue = map['iot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kms: (() {
        final guardedValue = map['kms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kvstore: (() {
        final guardedValue = map['kvstore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      log: (() {
        final guardedValue = map['log'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      market: (() {
        final guardedValue = map['market'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxcompute: (() {
        final guardedValue = map['maxcompute'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mhub: (() {
        final guardedValue = map['mhub'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mns: (() {
        final guardedValue = map['mns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mnsOpen: (() {
        final guardedValue = map['mnsOpen'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mscopensubscription: (() {
        final guardedValue = map['mscopensubscription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mse: (() {
        final guardedValue = map['mse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nas: (() {
        final guardedValue = map['nas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nlb: (() {
        final guardedValue = map['nlb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oceanbase: (() {
        final guardedValue = map['oceanbase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oceanbasepro: (() {
        final guardedValue = map['oceanbasepro'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ons: (() {
        final guardedValue = map['ons'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      onsproxy: (() {
        final guardedValue = map['onsproxy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oos: (() {
        final guardedValue = map['oos'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      opensearch: (() {
        final guardedValue = map['opensearch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oss: (() {
        final guardedValue = map['oss'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ots: (() {
        final guardedValue = map['ots'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      polardb: (() {
        final guardedValue = map['polardb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      polardbx: (() {
        final guardedValue = map['polardbx'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privatelink: (() {
        final guardedValue = map['privatelink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pvtz: (() {
        final guardedValue = map['pvtz'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quickbi: (() {
        final guardedValue = map['quickbi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quickbiPublic: (() {
        final guardedValue = map['quickbiPublic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quotas: (() {
        final guardedValue = map['quotas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rKvstore: (() {
        final guardedValue = map['rKvstore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ram: (() {
        final guardedValue = map['ram'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rds: (() {
        final guardedValue = map['rds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      redisa: (() {
        final guardedValue = map['redisa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourcemanager: (() {
        final guardedValue = map['resourcemanager'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourcesharing: (() {
        final guardedValue = map['resourcesharing'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ressharing: (() {
        final guardedValue = map['ressharing'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rocketmq: (() {
        final guardedValue = map['rocketmq'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ros: (() {
        final guardedValue = map['ros'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sae: (() {
        final guardedValue = map['sae'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sas: (() {
        final guardedValue = map['sas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scdn: (() {
        final guardedValue = map['scdn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schedulerx2: (() {
        final guardedValue = map['schedulerx2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sddp: (() {
        final guardedValue = map['sddp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      selectdb: (() {
        final guardedValue = map['selectdb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverless: (() {
        final guardedValue = map['serverless'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      servicecatalog: (() {
        final guardedValue = map['servicecatalog'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      servicemesh: (() {
        final guardedValue = map['servicemesh'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sgw: (() {
        final guardedValue = map['sgw'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slb: (() {
        final guardedValue = map['slb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      smartag: (() {
        final guardedValue = map['smartag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      srvcatalog: (() {
        final guardedValue = map['srvcatalog'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sts: (() {
        final guardedValue = map['sts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      swas: (() {
        final guardedValue = map['swas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      swasOpen: (() {
        final guardedValue = map['swasOpen'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tag: (() {
        final guardedValue = map['tag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vod: (() {
        final guardedValue = map['vod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpc: (() {
        final guardedValue = map['vpc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcipam: (() {
        final guardedValue = map['vpcipam'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcpeer: (() {
        final guardedValue = map['vpcpeer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vs: (() {
        final guardedValue = map['vs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      waf: (() {
        final guardedValue = map['waf'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      wafOpenapi: (() {
        final guardedValue = map['wafOpenapi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
