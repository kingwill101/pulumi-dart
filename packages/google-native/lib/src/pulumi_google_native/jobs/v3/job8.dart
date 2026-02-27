import 'package:pulumi/pulumi.dart' hide Config;
import 'application_info_response.dart';
import 'compensation_info_response.dart';
import 'job_args8.dart';
import 'job_derived_info_response.dart';
import 'processing_options_response.dart';

/// Creates a new job. Typically, the job becomes searchable within 10 seconds, but it may take up to 5 minutes.
class Job8 extends CustomResource {
  /// Optional but strongly recommended for the best service experience. Location(s) where the employer is looking to hire for this job posting. Specifying the full street address(es) of the hiring location enables better API results, especially job searches by commute time. At most 50 locations are allowed for best search performance. If a job has more locations, it is suggested to split it into multiple jobs with unique requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', etc.) as multiple jobs with the same company_name, language_code and requisition_id are not allowed. If the original requisition_id must be preserved, a custom field should be used for storage. It is also suggested to group the locations that close to each other in the same job for better search experience. Jobs with multiple addresses must have their addresses with the same LocationType to allow location filtering to work properly. (For example, a Job with addresses "1600 Amphitheatre Parkway, Mountain View, CA, USA" and "London, UK" may not have location filters applied correctly at search time since the first is a LocationType.STREET_ADDRESS and the second is a LocationType.LOCALITY.) If a job needs to have multiple addresses, it is suggested to split it into multiple jobs with same LocationTypes. The maximum number of allowed characters is 500.
  late final Output<List<String>> addresses;

  /// At least one field within ApplicationInfo must be specified. Job application information.
  late final Output<ApplicationInfoResponse> applicationInfo;

  /// Display name of the company listing the job.
  late final Output<String> companyDisplayName;

  /// The resource name of the company listing the job, such as "projects/api-test-project/companies/foo".
  late final Output<String> companyName;

  /// Optional. Job compensation information.
  late final Output<CompensationInfoResponse> compensationInfo;

  /// Optional. A map of fields to hold both filterable and non-filterable custom job attributes that are not covered by the provided structured fields. The keys of the map are strings up to 64 bytes and must match the pattern: a-zA-Z*. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100 filterable and at most 100 unfilterable keys are supported. For filterable `string_values`, across all keys at most 200 values are allowed, with each string no more than 255 characters. For unfilterable `string_values`, the maximum total size of `string_values` across all keys is 50KB.
  late final Output<Map<String, String>> customAttributes;

  /// Optional. The desired education degrees for the job, such as Bachelors, Masters.
  late final Output<List<String>> degreeTypes;

  /// Optional. The department or functional area within the company with the open position. The maximum number of allowed characters is 255.
  late final Output<String> department;

  /// Derived details about the job posting.
  late final Output<JobDerivedInfoResponse> derivedInfo;

  /// The description of the job, which typically includes a multi-paragraph description of the company and related information. Separate fields are provided on the job object for responsibilities, qualifications, and other job characteristics. Use of these separate job fields is recommended. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 100,000.
  late final Output<String> description;

  /// Optional. The employment type(s) of a job, for example, full time or part time.
  late final Output<List<String>> employmentTypes;

  /// Optional. A description of bonus, commission, and other compensation incentives associated with the job not including salary or pay. The maximum number of allowed characters is 10,000.
  late final Output<String> incentives;

  /// Optional. The benefits included with the job.
  late final Output<List<String>> jobBenefits;

  /// Optional. The end timestamp of the job. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  late final Output<String> jobEndTime;

  /// Optional. The experience level associated with the job, such as "Entry Level".
  late final Output<String> jobLevel;

  /// Optional. The start timestamp of the job in UTC time zone. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  late final Output<String> jobStartTime;

  /// Optional. The language of the posting. This field is distinct from any requirements for fluency that are associated with the job. Language codes must be in BCP-47 format, such as "en-US" or "sr-Latn". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){: class="external" target="_blank" }. If this field is unspecified and Job.description is present, detected language code based on Job.description is assigned, otherwise defaults to 'en_US'.
  late final Output<String> languageCode;

  /// Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is "projects/{project_id}/jobs/{job_id}", for example, "projects/api-test-project/jobs/1234". Use of this field in job queries and API calls is preferred over the use of requisition_id since this value is unique.
  late final Output<String> name;

  /// The timestamp when this job posting was created.
  late final Output<String> postingCreateTime;

  /// Optional but strongly recommended for the best service experience. The expiration timestamp of the job. After this timestamp, the job is marked as expired, and it no longer appears in search results. The expired job can't be deleted or listed by the DeleteJob and ListJobs APIs, but it can be retrieved with the GetJob API or updated with the UpdateJob API. An expired job can be updated and opened again by using a future expiration timestamp. Updating an expired job fails if there is another existing open job with same company_name, language_code and requisition_id. The expired jobs are retained in our system for 90 days. However, the overall expired job count cannot exceed 3 times the maximum of open jobs count over the past week, otherwise jobs with earlier expire time are cleaned first. Expired jobs are no longer accessible after they are cleaned out. Invalid timestamps are ignored, and treated as expire time not provided. Timestamp before the instant request is made is considered valid, the job will be treated as expired immediately. If this value is not provided at the time of job creation or is invalid, the job posting expires after 30 days from the job's creation time. For example, if the job was created on 2017/01/01 13:00AM UTC with an unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC. If this value is not provided on job update, it depends on the field masks set by UpdateJobRequest.update_mask. If the field masks include expiry_time, or the masks are empty meaning that every field is updated, the job posting expires after 30 days from the job's last update time. Otherwise the expiration date isn't updated.
  late final Output<String> postingExpireTime;

  /// Optional. The timestamp this job posting was most recently published. The default value is the time the request arrives at the server. Invalid timestamps are ignored.
  late final Output<String> postingPublishTime;

  /// Optional. The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn't specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.
  late final Output<String> postingRegion;

  /// The timestamp when this job posting was last updated.
  late final Output<String> postingUpdateTime;

  /// Optional. Options for job processing.
  late final Output<ProcessingOptionsResponse> processingOptions;
  late final Output<String> project;

  /// Optional. A promotion value of the job, as determined by the client. The value determines the sort order of the jobs returned when searching for jobs using the featured jobs search call, with higher promotional values being returned first and ties being resolved by relevance sort. Only the jobs with a promotionValue >0 are returned in a FEATURED_JOB_SEARCH. Default value is 0, and negative values are treated as 0.
  late final Output<int> promotionValue;

  /// Optional. A description of the qualifications required to perform the job. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  late final Output<String> qualifications;

  /// The requisition ID, also referred to as the posting ID, assigned by the client to identify a job. This field is intended to be used by clients for client identification and tracking of postings. A job is not allowed to be created if there is another job with the same [company_name], language_code and requisition_id. The maximum number of allowed characters is 255.
  late final Output<String> requisitionId;

  /// Optional. A description of job responsibilities. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  late final Output<String> responsibilities;

  /// The title of the job, such as "Software Engineer" The maximum number of allowed characters is 500.
  late final Output<String> title;

  /// Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
  late final Output<String> visibility;

  Job8(
    String name, {
    JobArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:jobs/v3:Job',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addresses = registerOutput<List<String>>('addresses');
    this.applicationInfo =
        registerOutput<ApplicationInfoResponse>('applicationInfo');
    this.companyDisplayName = registerOutput<String>('companyDisplayName');
    this.companyName = registerOutput<String>('companyName');
    this.compensationInfo =
        registerOutput<CompensationInfoResponse>('compensationInfo');
    this.customAttributes =
        registerOutput<Map<String, String>>('customAttributes');
    this.degreeTypes = registerOutput<List<String>>('degreeTypes');
    this.department = registerOutput<String>('department');
    this.derivedInfo = registerOutput<JobDerivedInfoResponse>('derivedInfo');
    this.description = registerOutput<String>('description');
    this.employmentTypes = registerOutput<List<String>>('employmentTypes');
    this.incentives = registerOutput<String>('incentives');
    this.jobBenefits = registerOutput<List<String>>('jobBenefits');
    this.jobEndTime = registerOutput<String>('jobEndTime');
    this.jobLevel = registerOutput<String>('jobLevel');
    this.jobStartTime = registerOutput<String>('jobStartTime');
    this.languageCode = registerOutput<String>('languageCode');
    this.name = registerOutput<String>('name');
    this.postingCreateTime = registerOutput<String>('postingCreateTime');
    this.postingExpireTime = registerOutput<String>('postingExpireTime');
    this.postingPublishTime = registerOutput<String>('postingPublishTime');
    this.postingRegion = registerOutput<String>('postingRegion');
    this.postingUpdateTime = registerOutput<String>('postingUpdateTime');
    this.processingOptions =
        registerOutput<ProcessingOptionsResponse>('processingOptions');
    this.project = registerOutput<String>('project');
    this.promotionValue = registerOutput<int>('promotionValue');
    this.qualifications = registerOutput<String>('qualifications');
    this.requisitionId = registerOutput<String>('requisitionId');
    this.responsibilities = registerOutput<String>('responsibilities');
    this.title = registerOutput<String>('title');
    this.visibility = registerOutput<String>('visibility');
  }
}
